clc;
syms n z a;
X=symsum(a^n*z^-n,n,0,%inf)
disp(X,"a^n*u[n] <-->")
//by differentiation of z property
Xn=-z*diff(X,z);
disp(Xn,"n*a^n*u[n] <-->")
Xa=diff(X,a);
disp(Xa,"n*a^(n-1)*u[n] <-->")