// sum 17-6
clc;
clear;
W=400*10^3;
Ro=200;
Ri=160;
ho=0.1;
t=150;
// specific gravity is rho
rho=0.86;
pi=2*W*log(Ro/Ri)/(%pi*(Ro^2-Ri^2));
zk=(0.22*t)-(180/t);
z=rho*zk;
u=z/(10^9);
Q=%pi*pi*ho^3/(6*u*log(Ro/Ri));
Q=Q*60/10^6;

  // printing data in scilab o/p window
  printf("pi is %0.3f MPa ",pi);
  printf("\n Q is %0.2f lpm ",Q);
  
  //The difference in answer to Q is due to rounding -off of values.