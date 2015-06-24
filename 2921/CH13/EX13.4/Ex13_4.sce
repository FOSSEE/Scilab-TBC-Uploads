clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-13.4 Page No.288\n');

//Pitch diameter
Ng=60;
Pd=6;
Dp=Ng/Pd;

mprintf('\n Pitch diameter = %f in.',Dp);

//Circular pitch
Pc=%pi*Dp/Ng;

mprintf('\n Circular pitch = %f in.',Pc);

L=Pc;

//Lead angle
D=2;
LA=atan(L/(%pi*D));
LA=LA*180/%pi;

mprintf('\n Lead angle = %f deg.',LA);

//Centerline distance
CC=(D+Dp)/2;

mprintf('\n Centerline distance = %f in.',CC);

//Velocity ratio
Ntgear=60;
Nstarts_worm=1;
Vr=Ntgear/Nstarts_worm;

mprintf('\n Velocity ratio = %f',Vr);

//Output speed
nin=1750;
nout=nin/Vr;

mprintf('\n Output speed = %f rpm.',nout);
