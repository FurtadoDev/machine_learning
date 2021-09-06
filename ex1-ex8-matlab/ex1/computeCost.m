function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

theta_tp = transpose(theta);
X_tp = transpose(X);
h = theta_tp * X_tp; % 1Xm
inside_summation_elements = (h - transpose(y)).^2;
J = sum(inside_summation_elements)/(2*m);

% =========================================================================

end
