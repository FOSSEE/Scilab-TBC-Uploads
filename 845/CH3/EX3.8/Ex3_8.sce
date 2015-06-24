//Example 3.8
clc
clear

A = [6 -3 1;  2 1 -8;1 -7 1];
b = [11; -15; 10];

n = length (b);
tol = 1e-4;
iter = 1;
maxit = 9;

x = zeros(1,n);            //Intial guess
absA = abs(A);
[dummy,index] = max(absA(1,:),absA(2,:),absA(3,:));
if length(unique(index)) == n
    nu_T = diag(diag(A(index,:))) - A(index,:);
    if abs(diag(A(index,:))) - (sum(abs(nu_T),2)) > 0
        A(index,:) = A;
        b(index,:) = b;
    end
end

for iter = 1:maxit
    R(iter,:) = b' - x(iter,:) * A';
    [mx,i] = max(abs(R(iter,:)));
    Rmax(iter) = R(iter,i);
    dx(iter) = Rmax(iter) ./ A(i,i);
    x(iter+1,:) = x(iter,:);
    x(iter+1,i) = x(iter,i) + dx(iter);
end
R = round(R*10^4)/10^4;
Rmax = round(Rmax*10^4)/10^4;
dx = round(dx*10^4)/10^4;
x = round(x*10^4)/10^4;
mprintf('%s %3s %9s %9s %12s %10s %6s %9s %9s','Iter No.','R1','R2','R3','Max Ri','Diff dxi','x1','x2','x3');
disp([(1:maxit)' R Rmax dx x(1:maxit,:)])
