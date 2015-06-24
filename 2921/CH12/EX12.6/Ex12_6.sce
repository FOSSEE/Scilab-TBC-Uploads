clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-12.6 Page No.266\n');

//Miscellaneous properties
Np=48;
Pd=12;
Dp=Np/Pd;
Vr=3;
Ng=Np*Vr;

//Surface speed
n=900;
Vm=%pi*Dp*n/12;

mprintf('\n Surface speed = %f ft/min.',Vm);

//Force on teeth
hp=2;
Ft=33000*hp/Vm;

mprintf('\n Force on teeth = %f lb.',Ft);

//Dynamic force
Fd=(600+Vm)*Ft/600;

mprintf('\n Dynamic force = %f lb.',Fd);

//Width
Su=30*10^3;
Sn=0.4*Su;
Y=0.344;
Nsf=2;
b=Fd*Nsf*Pd/(Sn*Y);
b=round(b);

mprintf('\n Width = %f in.',b);

if (8/Pd)<b&b<(12.5/Pd) then
    mprintf('\n This is an acceptable design.');
end
