% 1.	Matrix and Array Operations
% (a) For a square matrix A (say, a 3 x 3 matrix) test the following commands:
% A^2, A’(transpose A), A(2, 3), A(2, 2), A(1,:), A(:, 1), A(:, 1:2:3), A(2:1:3, 2:1:3), 
% inv (A), det(A), diag(A), rank(A), expm(A), size(A), length (A), max(A), min(A)
% (b) Consider two square matrices A and B and test the following operations:
%            A + B, A – B, A* B, A .* B, A / B, A ./ B, [A  B], [A’ B’]
% (a)
% (a)
A = [2 3 4;
     5 7 8;
     1 0 6]

A_squared        = A^2
A_transpose      = A'
A_2_3            = A(2,3)
A_2_2            = A(2,2)
A_row1           = A(1,:)
A_col1           = A(:,1)
A_col_1_3        = A(:,1:2:3)
A_submatrix      = A(2:3,2:3)
A_inverse        = inv(A)
A_determinant    = det(A)
A_diagonal       = diag(A)
A_rank           = rank(A)
A_exponential    = expm(A)
A_size           = size(A)
A_length         = length(A)
A_max            = max(A)
A_min            = min(A)

% (b)
B = [1 2 3;
     0 1 4;
     5 6 0]

A_plus_B         = A + B
A_minus_B        = A - B
A_multiply_B     = A * B
A_elem_mult_B    = A .* B
A_div_B          = A / B
A_elem_div_B     = A ./ B
A_concat         = [A B]
A_trans_B_trans  = [A' B']