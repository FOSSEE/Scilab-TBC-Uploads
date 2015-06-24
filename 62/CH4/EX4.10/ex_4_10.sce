clc;
syms n z n0 a;
X=symsum(-1*z^-n,n,n0,%inf)
disp(X,"u[n-n0] <-->")
X2=symsum(z^-n,n,n0,n0);
disp(X2,"delta[n-n0] <-->")
X=symsum((a)^(n+1)*z^-n,n,-1,%inf)
disp(X,"a^(n+1)*u[n+1] <-->")
X=symsum(1*z^-n,n,-%inf,0)
disp(X,"u[-n] <-->")
X=symsum(a^-n*z^-n,n,-%inf,0)
disp(X,"a^-n*u[-n] <-->")