% 5.	Consider two polynomials: p(s) = 3s2+2s+1 and q(s) = s+4, after multiplication it gives
% n(s) = 3s3+14s2+9s+4. In MATLAB, this is done in following way:
% >>p = [3 2 1]; q = [0 1 4];       % coefficients of polynomials
% >>n = conv(p, q)
% Multiply three polynomials, x(s) = s4+3s3-2s2+5s+1, y(s) = 5s2+4s-2, z(s) = 5s3-6s+7 
% Multiply polynomials: g(s) = (s+2)2, h(s) = s2-4s+3                  

% Given:
p = [3 2 1]
q = [1 4]

n_result = conv(p, q)

% a. Multiply three polynomials:
x = [1 3 -2 5 1]    % s^4+3s^3-2s^2+5s+1
y = [5 4 -2]        % 5s^2+4s-2
z = [5 0 -6 7]      % 5s^3-6s+7

xy_result   = conv(x, y)
xyz_result  = conv(xy_result, z)

% b. Multiply polynomials:
g_base      = [1 2]
g_squared   = conv(g_base, g_base)

h           = [1 -4 3]

final_result = conv(g_squared, h)