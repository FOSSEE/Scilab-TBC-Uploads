// sum 19-1
clc;
clear;
R=1200;
b=300;
t=150;
N=500;
m=7100*10^-9*b*t;
Ar=b*t;
Aa=Ar/4;
C=(20280/t^2)+0.957+(Ar/Aa);
w=2*%pi*N/60;
V=w*R*10^-3;
siga=2*10^3*m*V^2/(C*Aa*3);
theta=30*%pi/180;
alpha=30*%pi/180;
x1=10^3*m*(V^2)/(b*t);
y1=cos(theta)/(3*C*sin(alpha));
z1=2000*R*10^-3/(C*t)*((1/alpha)-(cos(theta)/sin(alpha)));
sigrr1=x1*(1-y1+z1);
theta=0*%pi/180;
x2=10^3*m*(V^2)/(b*t);
y2=cos(theta)/(3*C*sin(alpha));
z2=2000*R*10^-3/(C*t)*((1/alpha)-(cos(theta)/sin(alpha)));
sigrr2=x2*(1-y2-z2);

  // printing data in scilab o/p window
  printf("axial stress is %0.2f MPa    ",siga);
  printf("\n tensile stress for theta=30deg is %0.1f MPa    ",sigrr1);
  printf("\n tensile stress for theta=0deg is %0.2f MPa    ",sigrr2);
  
  //The difference in the value of sigrr1 and sigrr2 is due to rounding-off of values.