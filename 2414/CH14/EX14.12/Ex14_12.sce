clc;
close();
clear();
//page no 487
//prob no. 14.12
Ex=3 //V/m
n0=377;
Hy=Ex/n0;
mprintf('(a) The vaulue of Hy is, Hy = %.3f * 10^-3 A/m\n',Hy*10^3);

Px=Ex^2/n0;
mprintf(' (b) The power density Px is, Px = %.3f * 10^-3 W/m^2\n',Px*10^3);
A=10*30;
P=Px*A;
mprintf(' (c) The net power transmitted is, P = %.3f W \n',P);
