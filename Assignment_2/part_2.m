% Test 2: 
% 
% (a)	Find poles, zeros and gain of all the problems given in Test 1

% (a) Poles, Zeros, Gain for Test 1 problems

num1 = [6]
den1 = [1 6 11 6]
[z1, p1, k1] = tf2zp(num1, den1)

num2 = [120 240]
den2 = conv([1 1 1], [1 3])
[z2, p2, k2] = tf2zp(num2, den2)

num3 = [20 20]
den3 = [1 5 7 3]
[z3, p3, k3] = tf2zp(num3, den3)

num4 = [2]
den4 = conv([1 1], [1 3 3 9])
[z4, p4, k4] = tf2zp(num4, den4)

num5 = [1 2]
den5_step1 = conv([1 0], [1 1])
den5 = conv(den5_step1, [1 0 9])
[z5, p5, k5] = tf2zp(num5, den5)



% (b)	For the following poles, zeros and gain, determine transfer functions:
% (i)	zeros at s = -1, -2; poles at s = 0, -4, -6 and gain k = 5
% (ii)	zeros at s = 1; poles at s = 0, -2, -1+j0.5, -1-j0.5 and gain k = 10 


% (b) Transfer function from given zeros, poles, gain

% (i)
z6 = [-1; -2]
p6 = [0; -4; -6]
k6 = 5

[num6, den6] = zp2tf(z6, p6, k6)

% (ii)
z7 = [-1]
p7 = [0; -2; -1+0.5i; -1-0.5i]
k7 = 10

[num7, den7] = zp2tf(z7, p7, k7)