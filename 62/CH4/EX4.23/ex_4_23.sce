clc;
z = %z;
syms n z1 ;
X  =z/((z+1)*(z+3));
X1 = denom(X);
zp = roots(X1);
X1 = z1/((z1+1)*(z1+3));
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
x2 = limit(F2,z1,zp(2));
disp(x2,'x2[n]=')
xt = x1+x2;
disp(xt*'u(n)','xt[n]=')
//x[n]=2*xt[n-1]+xt[n-3]+3*xt[n-5];F1 = X1*(z1^(n-1))*(z1-zp(1));
F1 = X1*(z1^(n-2))*(z1-zp(1));
F2 = X1*(z1^(n-2))*(z1-zp(2));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
x2 = limit(F2,z1,zp(2));
disp(x2,'x2[n]=')
xt1 = x1+x2;
F1 = X1*(z1^(n-4))*(z1-zp(1));
F2 = X1*(z1^(n-4))*(z1-zp(2));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
x2 = limit(F2,z1,zp(2));
disp(x2,'x2[n]=')
xt3 = x1+x2;
F1 = X1*(z1^(n-6))*(z1-zp(1));
F2 = X1*(z1^(n-6))*(z1-zp(2));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
x2 = limit(F2,z1,zp(2));
disp(x2,'x2[n]=')
xt5 = x1+x2;
disp(2*xt1*'u(n-1)'+xt3*'u(n-3)'+3*xt5*'u(n-5)',"x[n]")