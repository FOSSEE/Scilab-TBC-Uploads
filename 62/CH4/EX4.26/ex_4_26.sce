clc;
syms n z a b;
x=a^n;
X=symsum(x*z^-n,n,0,%inf)
disp(X,"a^n*u[n] <-->")
h=b^n;
H=symsum(h*z^-n,n,0,%inf)
disp(H,"H(z)=")
Y=X*H;
disp(Y,"Y(z)=")
Y=z^2/((z-a)*(z-b));
F1=Y*(z-a)*z^(n-1);
F2=Y*(z-b)*z^(n-1);
x1=limit(F1,z,a);
x2=limit(F2,z,b);
x=x1+x2;
disp(x*'u(n)',"x[n]=")