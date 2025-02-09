%%SAMPLE PURPOSES to experiment with new Kp and Ki values
% Parameters
J = 0.01;   % moment of inertia
b = 0.1;    % viscous friction constant
K = 0.01;   % electromotive force
R = 1;      % Resistance
L = 0.5;    % inductance
s = tf('s');

%vector kp ki
num = [0.06, .6];    %kp original: 0.06, ki 0.6
den = [1, 0]; 
C = tf(num, den);


% Transfer Functions:
% TF of motor G_p(s) (P_motor on link he sent) Note: the p = plant/process
G_p = K/((J*s + b)*(L*s + R) + K^2); 


% Closed-loop transfer function
G_cl = feedback(G_p * C, 1); % with unity feedback per instructions

% Step Responses:
figure;
step(G_cl, 0:0.01:100)
grid
title('PID Control with Ki and Kp')
