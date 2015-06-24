clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-11.5 Page No.241\n');

//Gear train value
Na=12;
Nb=36;
Nc=16;
Nd=64;
Vr=(Nb/Na)*(Nd/Nc);

mprintf('\n Gear train value is %f ',Vr);

//Motor torque
hp=1.5;
n=1750;
T=63000*hp/n;

mprintf('\n Motor torque is %f in-lb.',T);

//Output torque
Tout=T*Vr;

mprintf('\n Output torque is %f in-lb.',Tout);

//Output speed
nout=n/Vr;

mprintf('\n Output speed is %f rpm.',nout);

//Directions
mprintf('\n Directions\n  Gear A is clockwise.\n  Gear B is counterclockwise.\n  Gear C is counterclockwise.\n  Gear D is clockwise.');

//Output power
hp=T*n/63000;

mprintf('\n Output power is %f hp.',hp);
