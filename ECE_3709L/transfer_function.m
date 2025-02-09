% Parameters
J = 0.01;   % moment of inertia
b = 0.1;    % viscous friction constant
K = 0.01;   % electromotive force
R = 1;      % Resistance
L = 0.5;    % inductance
s = tf('s');

%vector kp ki
num = [0.06, 6];    %kp og =0.06, ki og = 0.6
den = [1, 0];
C = tf(num, den);

% Transfer Functions:
% TF of motor G_p(s) (P_motor on link he sent) Note: the p = plant/process
G_p = K/((J*s + b)*(L*s + R) + K^2); 
G_cl = feedback(G_p * C, 1); % with unity feedback per instructions

% Step Responses:
figure;

% Open-loop system
subplot(2, 2, 1);
step(G_p);
title('Open-Loop Step Response');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Closed-loop system
subplot(2, 2, 2);
step(G_cl, 0:0.01:15)
grid
title('Closed-Loop Step Response');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Bode Plots: 
% Plot the Bode plot of the open-loop system (G_p)
subplot(2, 2, 3);
bode(G_p);
title('Bode Plot of Open-Loop System (G_p)');
grid on;

% Plot the Bode plot of the closed-loop system (G_cl)
subplot(2, 2, 4);
bode(G_cl);
title('Bode Plot of Closed-Loop System (G_cl)');
grid on;
