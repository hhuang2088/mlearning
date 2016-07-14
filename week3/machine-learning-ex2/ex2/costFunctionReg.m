function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n_column = length(theta);
initial_grad = [];
lambda_mat = [];
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%for i = 1:m
%	matrix_cost(i) = -y(i) * log(sigmoid(X(i,:) * theta)) - (1 - y(i)) * log(1 - sigmoid(X(i,:) * theta));
%	initial_grad(i, 1) = (sigmoid(X(i,:) * theta) - y(i)) * X(i, 1);
%	for j = 2:n_column
%	initial_grad(i, j) = (sigmoid(X(i,:) * theta) - y(i)) * X(i, j);
%	lambda_mat(j) = theta(j)^2;

%end
%end
%lambda_sum = lambda/(2*m) * sum(lambda_mat);
%J = (1 / m) * sum(matrix_cost) + lambda_sum;
%grad(1) = 1/m * sum(initial_grad(:,1));

%for k = 2:n_column
%	lambda_theta = (lambda * theta(k))/m;
%	grad(k) =  (sum(initial_grad(:,k))/m) + lambda_theta;
%end

z = X * theta;
matrix_cost = -y .* log(sigmoid(z)) - (1 - y) .* log(1 - sigmoid(z));
initial_grad = X .* (sigmoid(z) - y);
lambda_mat = theta.^2;
lambda_mat(1) = 0;

lambda_sum = lambda/(2*m) * sum(lambda_mat);
J = (1 / m) * sum(matrix_cost) + lambda_sum;
lambda_theta = (lambda * theta(2:n_column))/m;
grad = sum(initial_grad/m)';
grad(2:n_column) = grad(2:n_column) + lambda_theta;



% =============================================================

end
