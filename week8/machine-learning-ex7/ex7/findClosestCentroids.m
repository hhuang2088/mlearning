function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1); % number of centroids 
m = length(X(:,1)); % number of examples 
distances = zeros(m, K); 

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
for i = 1:m
	current_best = false; 
	for c = 1:K % loop through each centroid for comparison
		difference = X(i,:) - centroids(c,:);
		squared_difference = sum(difference.^2); % find squared distance between current X and current centroid
		if (current_best == false || squared_difference < current_best)
			current_best = squared_difference;
			idx(i) = c;
		endif
	end	
end







% =============================================================

end

