// sum 23-3
clc;
clear;
theta=%pi/3;
r=160;
u=0.3;
pmax=0.9;
b=40;
R=(4*r*sin(theta))/((2*theta)+sin(2*theta));
//frictional torque is T
T=2*u*pmax*b*(r^2)*sin(theta);
T=2*T*10^-3;
Rx=0.5*pmax*b*r*((2*theta)+(sin(2*theta)))*10^-3;
Ry=u*Rx;

  // printing data in scilab o/p window
  printf("T is %0.2f Nmm ",T);
  printf("\n R is %0.3f mm ",R);
  printf("\n Rx is %0.3f kN ",Rx);
  printf("\n Ry is %0.2f kN ",Ry);
