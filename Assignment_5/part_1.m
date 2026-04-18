% Assignment 5 - Test 1: Bode Plots
clear; clc;

% System (a)
num_a = [1000];
den_a = [0.0001 0.101 1 0]; % Coefficients of 0.0001s^3 + 0.101s^2 + s
sys_a = tf(num_a, den_a);

% System (b)
num_b = [15];
den_b = [0.7 7.1 15 0];    % Coefficients of 0.7s^3 + 7.1s^2 + 15s
sys_b = tf(num_b, den_b);

% Plotting with Margins (Stability Info)
figure;
subplot(2,1,1);
margin(sys_a); % 'margin' is better than 'bode' because it shows Gain/Phase margins
title('Bode Plot for System (a)');

subplot(2,1,2);
margin(sys_b);
title('Bode Plot for System (b)');