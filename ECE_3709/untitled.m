% Define transfer function numerator and denominator coefficients
num = [5.46];
den = [1, 1.309, 5.46];

% Create transfer function object
H = tf(num, den);

% Plot step response
figure;
step(H);
grid on;
title('Step Response of Transfer Function');
xlabel('Time');
ylabel('Amplitude');
