clc;
syms n z1 z;
z=%z;
X=symsum(1*z1^-n,n,0,%inf)
disp(X,"u[n] <-->")
y=2*3^-n;
Y=symsum(y*z1^-n,n,0,%inf)
disp(Y,"Y(z)=")
H=Y/X;
disp(H,"H(z)=")
Hz=2*(z-1)/(z-1/3);
Hd=denom(Hz);
zp=roots(Hd);
Hz=2*(z1-1)/(z1-1/3);
F1 = Hz*(z1^(n-1))*(z1-zp(1));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
x =x1;
disp(x*'u(n)'+'6*delta(n)','y[n]=');
disp("part b")
x=(1/2)^n;
X=symsum(x*z1^-n,n,0,%inf)
disp(X,"X(z)")
Yz=X*Hz;
disp(Yz,"Y(z)=")
Yz=2*z1*(z1-1)/((z1-1/2)*(z1-1/3));
F1 = Yz*(z1^(n-1))*(z1-1/2);
F2 = Yz*(z1^(n-1))*(z1-1/3);
y1 = limit(F1,z1,1/2);
disp(y1,'y1[n]=')
y2 = limit(F2,z1,1/3);
disp(y2,'y2[n]=')
y = y1+y2;
disp(y*'u(n)','y[n]=')