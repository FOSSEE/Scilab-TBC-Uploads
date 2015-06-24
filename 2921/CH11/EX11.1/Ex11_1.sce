clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-11.1 Page No.217\n');

N2=60;
N1=20;
N3=20;
N4=60;

Vr=(N2/N1)*(N4/N3);

//Output speed
n1=3600;
n4=n1/Vr;

mprintf('\n The output speed is %f rpm.',n4);

//Output torque
T1=200;
T4=T1*Vr;

mprintf('\n The output torque is %f lb*in.',T4);

//Input horsepower
hpi=T1*n1/63000;

mprintf('\n The input horsepower is %f hp.',hpi);

//Output horsepower
hpo=T4*n4/63000;

mprintf('\n The output horsepower is %f hp.',hpo);
