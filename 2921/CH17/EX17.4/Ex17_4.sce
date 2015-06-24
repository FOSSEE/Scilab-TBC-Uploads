clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-17.4 Page No.385\n');

//Modifying factors for Sn
Su=88000;
Csize=0.85;
Csurface=0.88;
Ctype=1;

Sn=Csize*Csurface*Ctype*(0.5*Su);
Kt=2.3;
S=9300;

N=Sn/(Kt*S);

if N>2 then
    mprintf('\n It would be an acceptable design.');
else
    mprintf('\n N<2,So this is not a suitable design for long term use.');
end
