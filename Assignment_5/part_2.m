% Assignment 5 - Test 2: Nyquist Plots
clear; clc;

% System (a)
num_2a = [1];
den_2a = [1 0.3 5 1]; 
sys_2a = tf(num_2a, den_2a);

% System (b) - Simplified
K = 1; 
num_2b = [K];
den_2b = [1 8 15]; % (s+3)(s+5) = s^2 + 8s + 15
sys_2b = tf(num_2b, den_2b);

% Plotting Nyquist
figure;
subplot(1,2,1);
nyquist(sys_2a);
title('Nyquist Plot (a)');
grid on;

subplot(1,2,2);
nyquist(sys_2b);
title('Nyquist Plot (b)');
grid on;