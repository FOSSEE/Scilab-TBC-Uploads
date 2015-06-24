//signals and systems
//Inverse Z Transform:ROC |z|>1/3
z = %z;
syms n z1;//To find out Inverse z transform z must be linear z = z1
X  =(8*z-19)/((z-2)*(z-3))
X1 = denom(X);
zp = roots(X1);
X1 = (8*z1-19)/((z1-2)*(z1-3))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1,'h1[n]=')
h2 = limit(F2,z1,zp(2));
disp(h2,'h2[n]=')
h = h1+h2;
disp(h,'h[n]=')