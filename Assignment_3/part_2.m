% Q.2. Write a MATLAB program to plot the following:
% a)	Rise time (tr)  vs  
% b)	Peak time (tp)   vs  
% c)	Overshoot (Mp)   vs   
% d)	Settling time (ts)   vs  
% by varying the damping ratio   between 0 to 1 (in case of a), b), and c)) and between 0.2 to 1 (in case of d)), keeping   rad/s,   for a unit step input.

%% MATLAB Program for Q.2: Performance Indices vs Zeta
clear; clc;

% Constants given in the assignment
wn = 2; 
K = 1;

%% Part a, b, c: Zeta from 0 to 1
zeta_range1 = 0:0.01:1;
tr = []; tp = []; Mp = [];

for z = zeta_range1
    num = [K * wn^2];
    den = [1, 2*z*wn, wn^2];
    sys = tf(num, den);
    
    info = stepinfo(sys);
    tr = [tr, info.RiseTime];
    tp = [tp, info.PeakTime];
    Mp = [Mp, info.Overshoot];
end

%% Part d: Settling Time (Zeta from 0.2 to 1)
zeta_range2 = 0.2:0.01:1;
ts = [];

for z = zeta_range2
    num = [K * wn^2];
    den = [1, 2*z*wn, wn^2];
    sys = tf(num, den);
    
    info = stepinfo(sys);
    ts = [ts, info.SettlingTime];
end

%% Plotting the results
figure;

% a) Rise Time vs Zeta
subplot(2,2,1);
plot(zeta_range1, tr, 'b', 'LineWidth', 1.5);
title('Rise Time (t_r) vs \zeta');
xlabel('\zeta'); ylabel('t_r (sec)'); grid on;

% b) Peak Time vs Zeta
subplot(2,2,2);
plot(zeta_range1, tp, 'r', 'LineWidth', 1.5);
title('Peak Time (t_p) vs \zeta');
xlabel('\zeta'); ylabel('t_p (sec)'); grid on;

% c) Overshoot vs Zeta
subplot(2,2,3);
plot(zeta_range1, Mp, 'g', 'LineWidth', 1.5);
title('Overshoot (M_p) vs \zeta');
xlabel('\zeta'); ylabel('M_p (%)'); grid on;

% d) Settling Time vs Zeta
subplot(2,2,4);
plot(zeta_range2, ts, 'm', 'LineWidth', 1.5);
title('Settling Time (t_s) vs \zeta');
xlabel('\zeta'); ylabel('t_s (sec)'); grid on;