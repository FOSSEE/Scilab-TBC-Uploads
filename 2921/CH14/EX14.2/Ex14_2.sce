clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-14.2 Page No.310\n');

//Length of belt
C=19;
D1=4;
D2=6;

L1=2*C+1.57*(D1+D2)+(D2-D1)^2/(4*C);

//Assuming a 54-inch belt is available
L=54;

mprintf('\n Length of belt = %f in.',L);

//Centerline distance
B=4*L-6.28*(D2+D1);

C=(B+sqrt(B^2-32*(D2-D1)^2))/16;

mprintf('\n Centerline distance = %f in.',C);

//Ratio
Mw=D2/D1;

mprintf('\n Ratio = %f.',Mw);

//Surface speed
n=1800;
Vm=%pi*D1*n/12;

mprintf('\n Surface speed = %f ft/min.',Vm);

//Angle of contact

theta=180-2*(180/%pi)*asin((D2-D1)/(2*C));

mprintf('\n Angle of contact = %f deg.',theta);
