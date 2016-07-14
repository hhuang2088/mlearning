function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
n_row = size(g)(1);
n_column = size(g)(2);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

for i = 1:n_row
	for j = 1:n_column
		g(i, j) = 1 / (1 + e^(-1 * z(i, j)));
	end
end

g;

% =============================================================

end
