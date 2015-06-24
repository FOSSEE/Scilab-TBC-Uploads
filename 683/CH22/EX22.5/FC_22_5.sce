// 22-5
clc;
clear;
n1=4;
n2=3;
n=(n1+n2-1);
R2=80;
R1=50;
//According to Uniform Pressure Theory
//W=p*pi*((R2^2)-(R1^2)) T=n*2*u*W*((R2^3)-(R1^3))/(((R2^2)-(R1^2))*3)
P=15*10^3;
N=1400;
u=0.25;
w=2*%pi*N/60;
T=P/w;
W=T*3*((R2^2)-(R1^2))/(n*2*u*((R2^3)-(R1^3)))*10^3;
p=W/(%pi*((R2^2)-(R1^2)));

  // printing data in scilab o/p window
printf("\nThe angular speed is %0.2f rad/sec",w);
printf("\nThe Torque is %0.3f Nm",T);
printf("\nThe uniform pressure is %0.3f N/mm^2",p);
printf("\nThe Force is %0.1f N",W);




