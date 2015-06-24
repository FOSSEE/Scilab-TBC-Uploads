clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-12.4 Page No.262\n');

//Dynamic load
Vm=1129;
Ft=146;
Fd=(600+Vm)*Ft/600;

mprintf('\n Dynamic load = %f lb.',Fd);

Fs=1900;
Nsf=2;

//Comparing to the allowable stress

if (Fs/Nsf)>Fd then
    mprintf('\n This is an acceptable design.');
end
