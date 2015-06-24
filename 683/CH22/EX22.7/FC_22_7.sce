// 22-7
clc;
clear;
P=12*10^3;
N=750 //Speed=N
w=2*%pi*N/60;
Tf=P/w;
p1=0.12;
a=12.5;//Semi-cone angle
u=0.3;
k=u*0.18246*1.121/0.21644;
R1=(Tf*(10^3)/k)^(1/3);
R2=R1*1.242;
Rm=1.121*R1;
W=2*%pi*p1*R1*(R2-R1);

  // printing data in scilab o/p window
printf("\nThe angular speed is %0.2f rad/sec",w);
printf("\nThe Torque is %0.1f Nm",Tf);
printf("\nThe Inner radius is %0.1f mm",R1);
printf("\nThe Outer radius is %0.1f mm",R2);
printf("\nThe mean radius is %0.2f mm",Rm);
printf("\nThe axial force is %0.0f N",W);

//The difference in the answer is due to rounding-off of values.
