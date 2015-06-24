clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-11.2 Page No.219\n');

Na=20;
Nb=65;
Nc=20;
Nd=22;
Ne=60;

//train value
Vr=(Nb/Na)*(Nd/Nc)*(Ne/Nd);

mprintf('\n Train value = %f ',Vr);

//Output speed
na=3000;
ne=na/Vr;

mprintf('\n \Output speed = %f rpm.',ne);

//Output torque
Ta=10;
Te=Ta*Vr;

mprintf('\n Output torque = %f lb*in.',Te);

//Direction

mprintf('\n Direction\n   If Gear A is clockwise,\n   Gear B is counterclockwise.\n   Gear C is counterclockwise.\n   Gear D is clockwise. \n   Gear E is counterclockwise.');

//Output power
P=Te*ne;
P=P*%pi/60;
 mprintf('\n Output power = %f W.',P);
