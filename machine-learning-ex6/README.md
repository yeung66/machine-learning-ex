# Support Vector Machine

## Basic SVM
### Task 1
Complete the code in __gaussianKernel.m__ to compute the Gaussian kernel between two examples.
Gaussian kernel is defined as:$$K_{gaussian}(x^{(i)},x^{(j)})=exp(-{||x^{(i)}-x^{(j)}||^2 \over 2\sigma ^2})$$

### Task 2
choose best C and $\sigma$ by cross validation in __dataset3Params.m__

choose the pair with the least error from 8*8 loops

## Email Spam
### Task 3
implement the code in __processEmail.m__ to remove the content's word not in vocablary list

### Task 4
extract features from emails in __emailFeatures.m__
