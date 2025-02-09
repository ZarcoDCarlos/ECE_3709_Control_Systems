% Define the transfer function
num = [1];        % Numerator
den = [1, 13, 40]; % Denominator (s(s+5)(s+8))

% Create the transfer function
G = tf(num, den);

% Plot the root locus
rlocus(G);
title('Root Locus Plot');
grid on;
