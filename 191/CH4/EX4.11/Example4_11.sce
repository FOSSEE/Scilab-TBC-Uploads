//Householder methods
clc;
clear;
close();
format('v',7);
A = [2 -1 1 4;-1 3 1 2;1 1 5 -3;4 2 -3 6];
disp(A, 'A = ');
n=4;
for r=1:n-2
    x = A(r+1:n,r);
    f = eye(n-r,n-r);
    e = f(:,1)
    I = eye(r,r);
    O(1:n-r,r) = 0;
    //calculating Q
    k = sqrt(x'*x);
    u = x - k*e;
    Q = eye(n-r,n-r) - 2*u*u'/(u'*u);
    //substituting in P 
    P(1:r,1:r)= I;
    P(r+1:n,1:r)=0;
    P(1:r,r+1:n)=0;
    P(r+1:n,r+1:n)=Q;
    A = P*A*P;
    disp(A,Q,P,'The P Q and A matrix are ; ')
end
C = A;
disp(C,'The tridiagonal matrix by householder method is : ')