% Q.3. Write a MATLAB program to plot the following:
% a)	Rise time   vs  
% b)	Peak time (tp)    vs  
% c)	Overshoot (Mp)    vs  
% d)	Settling time (ts)    vs  
% by varying the natural frequency    between 2 to 8rad/s, keeping    and   for a unit step input.


%% MATLAB Program for Q.3: Performance Indices vs Natural Frequency (wn)
clear; clc;

% Constants given in the assignment
zeta = 0.5; 
K = 1;

% Range for wn: 2 to 8 rad/s
wn_range = 2:0.1:8;

% Initialize empty buckets (vectors)
tr = []; tp = []; Mp = []; ts = [];

for wn = wn_range
    num = [K * wn^2];
    den = [1, 2*zeta*wn, wn^2];
    sys = tf(num, den);
    
    info = stepinfo(sys);
    
    tr = [tr, info.RiseTime];
    tp = [tp, info.PeakTime];
    Mp = [Mp, info.Overshoot]; 
    ts = [ts, info.SettlingTime];
end

%% Plotting the results
figure;

subplot(2,2,1);
plot(wn_range, tr, 'b', 'LineWidth', 1.5);
title('Rise Time (t_r) vs \omega_n');
xlabel('\omega_n (rad/s)'); ylabel('t_r (sec)'); grid on;

subplot(2,2,2);
plot(wn_range, tp, 'r', 'LineWidth', 1.5);
title('Peak Time (t_p) vs \omega_n');
xlabel('\omega_n (rad/s)'); ylabel('t_p (sec)'); grid on;

subplot(2,2,3);
plot(wn_range, Mp, 'g', 'LineWidth', 1.5);
title('Overshoot (M_p) vs \omega_n');
xlabel('\omega_n (rad/s)'); ylabel('M_p (%)'); grid on;

subplot(2,2,4);
plot(wn_range, ts, 'm', 'LineWidth', 1.5);
title('Settling Time (t_s) vs \omega_n');
xlabel('\omega_n (rad/s)'); ylabel('t_s (sec)'); grid on;