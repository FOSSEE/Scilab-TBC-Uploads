clear;
clc;
syms z n ;
x=(1/3)^n;
X=symsum(x*z^-n,n,0,%inf)
disp(X,"X(z)=")
Xz=z/(z-1/3);
Yz=z/(2*(z-1/2))+z^2/((z-1/3)*(z-1/2));
//y[-1]=1
Y1=z/(z-1/2);
Y2=z^2/((z-1/3)*(z-1/2));
FY1=Y1*z^(n-1)*(z-1/2);
y1n= limit(FY1,z,1/2);
FY21 = Y2*(z^(n-1))*(z-1/2);
FY22 = Y2*(z^(n-1))*(z-1/3);
y21n = limit(FY21,z,1/2);
y22n = limit(FY22,z,1/3);
y=(1/2)*y1n+(y22n+y21n);
disp(y*'u(n+1)',"part a) y[n]=")
//b)
x=(1/2)^n;
X=symsum(x*z^-n,n,0,%inf)
disp(X,"X(z)=")
Xz=z/(z-1/2);
Yz=z*(3*z^2-2*z+.5)/(3*(z-1)*(z-1/2)*(z-1/3));
//y[-1]=1 y[-2]=2
F1 = Yz*(z^(n-1))*(z-1);
F2 = Yz*(z^(n-1))*(z-1/2);
F3=  Yz*(z^(n-1))*(z-1/3);
y1 = limit(F1,z,1);
disp(y1,'y1[n]=')
y2 = limit(F2,z,1/2);
disp(y2,'y2[n]=')
y3 = limit(F3,z,1/3);
disp(y3,'y3[n]=')
y = y1+y2+y3;
disp(y*'u(n+2)','y[n]=')