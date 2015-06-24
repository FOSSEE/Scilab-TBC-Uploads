clc;
z = %z;
syms n z1 ;
X  =3/(z-2);
X1 = denom(X);
zp = roots(X1);
X1 = 3/(z1-2);
F1 = X1*(z1^(n-1))*(z1-zp(1));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
disp(x1*'u(n-1)',"x[n]=")