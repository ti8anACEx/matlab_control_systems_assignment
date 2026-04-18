% Assignment 4 - Test 2

% Define the numerator (s + 3)
num = [1 3];

% Define the denominator s(s+5)(s+6)(s^2 + 2s + 2)
% Note: [1 2 2] represents s^2 + 2s + 2
den = conv([1 0], conv([1 5], conv([1 6], [1 2 2])));

% Create the Transfer Function
sys = tf(num, den);

% Plotting the Root Locus
figure;
rlocus(sys);
title('Root Locus of the Open-Loop Transfer Function - Test 2');
grid on;

% Instructions for the user
disp('Click on the root locus plot to select a point and find K.');

% Start interactive selection
[k, poles] = rlocfind(sys);

% Print selected values
fprintf('Selected Gain (K): %.4f\n', k);
disp('Closed-Loop Pole Locations for this Gain:');
disp(poles);