//22-8
clc;
clear;
//semi-cone angle is given as 15 degree
k=sin(15*%pi/180);
u=0.3;
W=300;
Rm=90/2;
Tf=u*W*Rm/k;
Tf=Tf*(10^-3);
I=0.4;
a=Tf/I;
N=1440;
w=2*%pi*N/60;
t=w/a;
//During Slipping
theta1=w*t;
theta2=theta1/2;
U=Tf*(theta1-theta2);

  // printing data in scilab o/p window
printf("\nThe Torque is %0.3f Nm",Tf);
printf("\nThe angular acceleration is %0.3f rad/sec^2",a);
printf("\nThe angular speed is %0.1f rad/sec",w);
printf("\nThe time taken is %0.2f sec",t);
printf("\nThe Energy lost in friction is %0.0f Nm",U);
