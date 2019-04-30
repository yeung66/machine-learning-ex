function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
n = size(theta);
theta_fit = theta(2:n);
h = sigmoid(X*theta);
J = (theta_fit'*theta_fit*lambda)/(2*m) + (-y'*log(h)-(1-y)'*log(1-h)) / m;

temp_result = X'*(h-y)/m;
grad(1)=temp_result(1);
grad(2:n)=temp_result(2:n)+lambda*theta_fit/m;

% =============================================================

end
