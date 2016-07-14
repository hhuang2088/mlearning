function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    function_sum1 = [];
    function_sum2 = [];
    for index = 1:m

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    x_i = X(index,:);
    y_i = y(index);
    h_x = x_i * theta;
    function_sum1(index) = h_x - y_i;
    function_sum2(index) =  function_sum1(index) * X(index,2);
 
    end

    theta(1) = theta(1) - ((alpha/m) * sum(function_sum1));
    theta(2) = theta(2) - ((alpha/m) * sum(function_sum2));




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
