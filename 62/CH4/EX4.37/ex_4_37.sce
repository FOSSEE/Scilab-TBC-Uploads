clc;
clear;
syms n z a b y1 K;
Yz=a*y1*(z/(z-a))+K*z^2/((z-b)*(z-a));
//y1=y[-1]
Y1=z/(z-a);
Y2=z^2/((z-b)*(z-a));
FY1=Y1*z^(n-1)*(z-a);
y1n= limit(FY1,z,a);
FY21 = Y2*(z^(n-1))*(z-a);
FY22 = Y2*(z^(n-1))*(z-b);
y21n = limit(FY21,z,a);
y22n = limit(FY22,z,b);
y=a*y1*y1n+K*(y22n+y21n);
disp(y*'u(n)',"y[n]=")