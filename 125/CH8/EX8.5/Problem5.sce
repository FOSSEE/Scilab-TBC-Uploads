//Caption: To compute the covariance of the given 2D data
//Problem 5
//page439
close;
clear;
clc;
X1 = [2,1]';
X2 = [3,2]';
X3 = [2,3]';
X4 = [1,2]';
X = [X1,X2,X3,X4];
disp(X,'X=');
[M,N] = size(X); //M=rows, N = columns
for i =1:N
  m(i) = mean(X(:,i));
  A(:,i) = X(:,i)-m(i);
end
m = m';
disp(m,'mean =');
K = A'*A;
K = K/(M-1);
disp(K,'The Covaraince matix is K =')
//Result
//X=   
//    2.    3.    2.    1.  
//    1.    2.    3.    2.  
//mean =   
//    1.5    2.5    2.5    1.5  
// 
//The Covaraince matix is K =   
//    0.5    0.5  - 0.5  - 0.5  
//    0.5    0.5  - 0.5  - 0.5  
//  - 0.5  - 0.5    0.5    0.5  
//  - 0.5  - 0.5    0.5    0.5 