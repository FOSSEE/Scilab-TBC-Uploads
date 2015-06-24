//sum 17-7
clc;
clear;
//let number of pads be n
n=4;
W=100*10^3;
Ro=125;
Ri=50;
t=200;
ho=0.15;
pi=2*W*log(Ro/Ri)/(%pi*(Ro^2-Ri^2));
zk=(0.22*t)-(180/t);
// specific gravity is rho
rho=0.86;
z=rho*zk;
u=z/(10^9);
Q=%pi*pi*ho^3/(6*u*log(Ro/Ri));
Q=Q*60/10^6;

  // printing data in scilab o/p window
  printf("pi is %0.2f MPa ",pi);
  printf("\n Q is %0.3f lpm ",Q);