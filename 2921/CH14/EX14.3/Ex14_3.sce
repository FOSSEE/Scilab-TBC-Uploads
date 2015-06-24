clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-14.3 Page No.315\n');

//Power rating of belt
P1=27+2.98;
SF=1.5;
P=P1/SF;
P=round(P);

mprintf('\n Power rating = %f hp.',P);

//Length of belt
C=20;
D1=8;
D2=16;
L1=2*C+1.57*(D1+D2)+(D2-D1)^2/(4*C);

//Use an 80-inch belt
L=80;

mprintf('\n Length of belt = %f in.',L);
