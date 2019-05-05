# Anomaly Detection and Recommander System


## Anomaly detection
To detect anomalous behaviour in server computers

### Task 1
Estimate parameters of for a Gaussian in code of __estimateGaussian.m__

### Task 2
use Cross Validation set to choose the best threshold $\varepsilon$ by computer $F_1score = {2*P*R\over P+R}$ in the code of __selectTheshold__

## Recommander System
Use collaborative filtering learning algorithm and apply it to movie ratings

### Task 3
Complete the code in __cofiCostFunc.m__ to computer the cost function (Hard! )

use octave to implement

without regularization
- J = ((X*Theta' -Y) .* R) .^ 2 /2 
- X_grad = (X*Theta'-Y) .* R * Theta $X_{gradient}$ is a num_movies x num_features matrix
- Theta_grad = ((X * Theta' - Y).* R)' * X

with regularization
  - J = ((X*Theta' -Y) .* R) .^ 2 /2 + sum(sum(X.^2))*lambda/2+sum(sum(Theta.^2))*lambda/2
- X_grad = (X*Theta'-Y) .* R * Theta +lambda*X $X_{gradient}$ is a num_movies x num_features matrix
- Theta_grad = ((X * Theta' - Y).* R)' * X+lambda*Theta