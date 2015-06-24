//signals and systems
//Inverse Z Transform:ROC |z|>2
z = %z;
syms n z1;//To find out Inverse z transform z must be linear z = z1
X  =-z*(z+0.4)/((z-0.8)*(z-2))
X1 = denom(X);
zp = roots(X1);
X1 = -z1*(z1+0.4)/((z1-0.8)*(z1-2))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1,'h1[n]=')
h2 = limit(F2,z1,zp(2));
disp(h2,'h2[n]=')
h = h1+h2;
disp(h,'h[n]=')

//Inverse Z Transform:ROC 0.8<|z|<2
z = %z;
syms n z1;
X  =-z*(z+0.4)/((z-0.8)*(z-2))
X1 = denom(X);
zp = roots(X1);
X1 = -z1*(z1+0.4)/((z1-0.8)*(z1-2))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1*'u(n)','h1[n]=')
h2 = limit(F2,z1,zp(2));
disp((h2)*'u(-n-1)','h2[n]=')
disp((h1)*'u(n)'-(h2)*'u(n-1)','h[n]=')

//Inverse Z Transform:ROC |z|<0.8
z = %z;
syms n z1;
X  =-z*(z+0.4)/((z-0.8)*(z-2))
X1 = denom(X);
zp = roots(X1);
X1 = -z1*(z1+0.4)/((z1-0.8)*(z1-2))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1*'u(-n-1)','h1[n]=')
h2 = limit(F2,z1,zp(2));
disp((h2)*'u(-n-1)','h2[n]=')
disp(-(h1)*'u(-n-1)'-(h2)*'u(-n-1)','h[n]=')