% Part A: Define the transfer function
numerator_a = 5;
denominator_a = [1, 5];
sys_a = tf(numerator_a, denominator_a);

% Part B: Define the transfer function
numerator_b = 20;
denominator_b = [1, 20];
sys_b = tf(numerator_b, denominator_b);

% Part C: Define the transfer function
numerator_c = 0.1;
denominator_c = [4, 4, 1];
sys_c = tf(numerator_c, denominator_c);

% Plot the step response for both systems on the same graph
step(sys_a, sys_b, sys_c);
title('Step Response of the Systems');
xlabel('Time');
ylabel('Amplitude');
legend('System A', 'System B', 'System C');

% Adjust the limits of the y-axis
ylim([-0.1, 1.1]); % Adjust the limits according to your preference
