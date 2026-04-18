% 1.	Partial Fraction Expansion
% 
% A rational function,  , after partial fraction expansion
%  , pi poles, ri residues and k(s) is the direct term.
% For example,   becomes  
% Now verify this answer using software: 
% In command window, type the following
% >>num = [1  7  14  10  16]; den = [0  1   6  8   0]; [r, p, k] = residue (num, den) <press enter>
% which gives 		r = 1, -3, 2; p = -4, -2, 0; k = 1, 1
% The original function F(s) is obtained from r, p, k using the following commands
% >> [num, den] = residue (r, p, k);
% >>printsys (num, den, ‘s’);
% 
% 
% Test 1: Find the partial fraction expansions of the following using MATLAB:

% 1. Partial Fraction Expansion

num1 = [6]
den1 = [1 6 11 6]
[r1, p1, k1] = residue(num1, den1)

num2 = [120 240]
den2 = conv([1 1 1], [1 3])
[r2, p2, k2] = residue(num2, den2)

num3 = [20 20]
den3 = [1 5 7 3]
[r3, p3, k3] = residue(num3, den3)

num4 = [2]
den4 = conv([1 1], [1 3 3 9])
[r4, p4, k4] = residue(num4, den4)

num5 = [1 2]
den5_step1 = conv([1 0], [1 1])
den5 = conv(den5_step1, [1 0 9])
[r5, p5, k5] = residue(num5, den5)

% 2.	Determination of zeros & poles of transfer function
% Command to determine zeros (z), poles (p) and gain (k) is 	
% [z, p, k] = tf2zp(num, den)
% Where num and den are the matrices, elements of which are the coefficients of numerator and denominator polynomial respectively.
% For the transfer function,  , type the following in command window
% >>num=[0  0  20  20]; den=[1  5  7  3]; [z,p,k]=tf2zp(num,den) <press enter>
% This will produce output as z = -1, p = -3, -1, -1, k = 20 

% 2. Zeros, Poles, Gain

num6 = [20 20]
den6 = [1 5 7 3]

[z6, p6, k6] = tf2zp(num6, den6)


% 3.	Determination of transfer function from poles, zeros and gain
% Type the following set of commands and see the results:
% >> z = [-1]; p = [-3; -1; -1]; k = 20; [num, den] = zp2tf(z, p, k); printsys(num, den, ‘s’)    <press enter>


% 3. Transfer Function from z, p, k

z7 = [-1]
p7 = [-3 -1 -1]
k7 = 20

[num7, den7] = zp2tf(z7, p7, k7)
printsys(num7, den7, 's')