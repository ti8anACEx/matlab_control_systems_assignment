% Assignment 4 - Test 1


% Define the numerator (s + 7)
num = [1 7];

% Define the denominator s(s+5)(s+15)(s+20) using nested conv
den = conv([1 0], conv([1 5], conv([1 15], [1 20])));

% Create the Transfer Function
sys = tf(num, den);

% Plotting the Root Locus
figure;
rlocus(sys);
title('Root Locus of the Open-Loop Transfer Function');
grid on;

% Requirements
zeta = 0.6;
wn = 6;

% Calculating the theoretical coordinates (Target Bullseye)
sigma = -zeta * wn;
wd = wn * sqrt(1 - zeta^2);
desired_pole = sigma + 1j * wd;

% Interactive Gain Selection
% INSTRUCTIONS: When the plot opens, click where the locus intersects the zeta=0.6 line
[k, poles] = rlocfind(sys);

% Calculate theoretical overshoot based on zeta
overshoot = exp(-pi * zeta / sqrt(1 - zeta^2)) * 100;

% Print Results to Command Window
fprintf('Gain (K): %.4f\n', k);
fprintf('Theoretical Pole Location: %.4f + %.4fj\n', real(desired_pole), imag(desired_pole));
fprintf('Percentage Overshoot: %.2f%%\n', overshoot);