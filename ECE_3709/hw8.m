num = [74];    %kp original: 0.06, ki 0.6
den = [1, 7.08, 10.56, 0.8]; 


% Generate the Routh table
G = tf(num, den);

% Plot the root locus
rlocus(G);
title('Root Locus Plot');
grid on;



