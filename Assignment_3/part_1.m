% t=0:.01:100;
% num=[1]; den=[1 0.2 1];
% sys=tf(num,den);
% step(sys, t); % or step(num, den, t) 
% 
% impulse(sys); % considers 60 seconds automatically
% % or
% impulse(sys, t);

% Q.1. Write a MATLAB program to study the step response of a first order system and second order system.
% Part A: Step Response of a First-Order System
clear;
clc;
T=input('Enter value of time constant T:');
% Define the Transfer Function: G(s) = 1 / (Ts + 1)
num=[1];
den=[T 1];
t=0:1:14;
y=step(num,den,t);
plot(t,y);
xlabel('Time in seconds');
ylabel('Output y');
title('Unit-step response of first order system');



% Part B: Step Response of a Second-Order System
clear; clc;
wn = input('Enter natural frequency (wn): ');
zeta = input('Enter damping ratio (zeta): ');
K = 1; % Assuming Gain K = 1
num = [K * wn^2];
den = [1, 2*zeta*wn, wn^2];
sys = tf(num, den);

t = 0:0.01:100;
step(sys, t);
y=step(sys, t);
plot(t,y);