clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-12.3 Page No.258\n');
//Pinion
Su=95*10^3;
Sn=0.5*Su;
Y=0.320;
b=1;
Pd=8;

Fsp=Sn*b*Y/Pd;

mprintf('\n Force allowable for pinion = %f lb.',Fsp);

//Gear
Sn=0.5*88*10^3;
Y=0.421;
Fsg=Sn*b*Y/Pd;

mprintf('\n Force allowable for gear = %f lb.',Fsg);
