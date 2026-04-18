% 6.	Test the following:
% x = [0:1:10]
% x’
% p = [1:0.001:1]
% p’ 
% If x = [0   pi/2   pi   3*pi/2   2*pi] find y = sin(x)
% If z = [0:pi/6:pi] find zz = cos (z) and zzz = cos(z/2)

% x vector and its transpose
x1        = 0:1:10
x1_trans  = x1'

% p vector and its transpose
p         = 1:0.001:1
p_trans   = p'

% Given x values and sin(x)
x2        = [0 pi/2 pi 3*pi/2 2*pi]
y_sin     = sin(x2)

% z values and cosine operations
z         = 0:pi/6:pi
zz_cos    = cos(z)
zzz_cos   = cos(z/2)