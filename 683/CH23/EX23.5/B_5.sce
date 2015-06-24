// sum 23-5
clc;
clear;
m=1100;
V=65*5/18;
t=4;
r=0.22;
mb=12;
C=460;
S=0.5*V*t;
//Total kinetic energy TE=K.E(vehicle)+K.E(rotating parts).
TE=((0.5*m*(V^2))+(0.1*0.5*m*(V^2)));
E=TE/4;
w=V/r;
theta=S/r;
T=E/theta;
delT=E/(mb*C);

  // printing data in scilab o/p window
  printf("S is %0.2f m ",S);
  printf("\n E is %0.2f Nm ",E);
  printf("\n T is %0.2f Nm ",T);
  printf("\n delT is %0.2f ",delT);
  
//The difference in the answers are due to rounding-off of values.
