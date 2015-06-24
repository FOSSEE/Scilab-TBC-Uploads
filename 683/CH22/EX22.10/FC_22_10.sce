// 22-10
clc;
clear;
w2=2*%pi*1400/60;
w1=0.8*w2;
P=40*10^3;
T=P/w2;
n=4;
T1=T/4;
R=0.16;//Inner radius of drum
r=0.13;//radial distance of each shoe from axis of rotation
u=0.22;//coefficient of friction
x=u*r*R*((w2^2)-(w1^2))
m =T1/x;
l=R*%pi/3;
N=T1/(R*u);
p=1*10^5;
b=N/(p*l)*10^3;

  // printing data in scilab o/p window
printf("\nThe full speed is %0.1f rad/sec",w2);
printf("\nThe engagement speed is %0.2f rad/sec",w1);
printf("\nThe number of shoes is %0.0f ",n);
printf("\nThe Torque is %0.1f Nm",T);
printf("\nThe Torque per shoe is %0.1f Nm",T1);
printf("\nThe mass per shoe is %0.2f kg",m);
printf("\nThe length of friction lining is %0.5f m",l);
printf("\nThe width is %0.1f mm",b);
