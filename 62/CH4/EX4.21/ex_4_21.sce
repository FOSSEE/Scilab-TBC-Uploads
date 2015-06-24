z = %z;
syms n z1 ;
X  =1/((z-1)*(z-2));
//Xz=2z+1+X;
X1 = denom(X);
zp = roots(X1);
X1 = 1/((z1-1)*(z1-2));
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
x2 = limit(F2,z1,zp(2));
disp(x2,'x2[n]=')
x = x1+x2;
disp(x,'xt[n]=')
disp(x*'-u(-n-1)'+'2*delta(n+1)+3/4*delta(n)',"x[n]=")