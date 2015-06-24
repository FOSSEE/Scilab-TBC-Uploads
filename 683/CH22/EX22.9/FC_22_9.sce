// 22-9
clc;
clear;
P=15*10^3;
Ka=1.25;
N=1500;
w=2*%pi*N/60;
Tf=P/w;
d=(Tf*16/(50*%pi))^(1/3);
d=25;
Rm=5*d;
Pav=0.12;
u=0.22;
b=Tf/(%pi*u*Pav*(Rm^2));
b=40;
R1=Rm-(b*sin(15*%pi/180)/2);
R2=Rm+(b*sin(15*%pi/180)/2);

  // printing data in scilab o/p window
printf("\nThe Torque is %0.2f Nm",Tf);
printf("\nThe shaft diameter is %0.0f mm",d);
printf("\nThe width is %0.0f mm",b);
printf("\nThe Inner radius is %0.1f mm",R1);
printf("\nThe Outer radius is %0.1f mm",R2);
