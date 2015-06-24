//Caption: To verify the given matrix is a covaraince matrix
//Problem 4
//page438
close;
clear;
clc;
K = [37,-15;-15,37];
evals = spec(K);
evals = gsort(evals);
disp(evals,'Eigen Values are =')
if (evals==abs(evals)) then
    disp('Both the eigen values are non-negative and the given matrix is a covariance matrix');
else
    disp('non-covariance matrix')
end