clc;
syms n z a;
X=symsum(-1*z^-n,n,0,%inf)
disp(X,"u[n] <-->")
h=a^n;
H=symsum(h*z^-n,n,0,%inf)
disp(H,"H(z)=")
Y=X*H;
disp(Y,"Y(z)=")
Y=z^2/((z-1)*(z-a));
F1=Y*z^(n-1)*(z-a);
F2=Y*z^(n-1)*(z-1);
x1=limit(F1,z,a);
x2=limit(F2,z,1);
x=x1+x2;
disp(x*'u(n)',"x[n]=")