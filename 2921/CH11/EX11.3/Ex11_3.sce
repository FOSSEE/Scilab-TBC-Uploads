clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-11.3 Page No.231\n');

Np=16;
Ng=32;
Pd=8;

//Pitch diameter
Dp=Np/Pd;

mprintf('\n Pinion pitch diameter is %f in.',Dp);

Dg=Ng/Pd;

mprintf('\n Gear pitch diameter is %f in.',Dg);

//Circular pitch
Pc=%pi*Dp/Np;

mprintf('\n Circular pitch is %f in.',Pc);

//Centerline distance
CC=(Dp+Dg)/2;

mprintf('\n Centerline distance is %f in.',CC);
