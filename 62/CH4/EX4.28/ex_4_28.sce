clc;
syms n z a;
X=symsum(1*z^-n,n,0,%inf)
disp(X,"u[n] <-->")
y=a^n;
Y=symsum(y*z^-n,n,0,%inf)
disp(Y,"a^n*u[n] <-->")
H=Y/X;
disp(H,"H(z)=");
H=(z-1)/(z-a);
F1=H*z^(n-1)*(z-a);
h=limit(F1,z,a);
disp(h*'u(n)'+'1/a*delta(n)',"h[n]=")