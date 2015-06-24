z = %z;
syms n z1;
X  =z/((z-1)*(z-2)^2);
X1 = denom(X);
zp = roots(X1);
X1 = z1/((z1-1)*(z1-2)^2);
F1 = X1/z1*(z1-zp(3))^2;
F2 = X1/z1*(z1-zp(1));
Y2 = limit(F1,z1,zp(3));
C1 = limit(F2,z1,zp(1));
F3=(X1/z1-(Y2*F1+C1*F2))*(z1-zp(3));
Y1 = limit(F3,z1,0);

Xa=z1/(z1-zp(1));
F2 = Xa*z1^(n-1)*(z1-zp(1));
x1=limit(F2,z1,zp(1));
Xb=z1/(z1-zp(3));
F1= Xb*z1^(n-1)*(z1-zp(3));
x2 =limit(F1,z1,zp(3));
//x3 is differntiation of x2 w.r.t a where a is x2=a^n
x3=n*2^(n-1);
x=C1*x1+Y1*x2+Y2*x3;
disp(x*'u(n)',"x[n]=");