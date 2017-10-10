//Resistance of moving coil instrument R, Full deflection current I
close();
clear;
clc;
R = 10;//ohm
I = 0.05;//A
//Part (i)
V = 750;
Rse = V/I - R;
//Part(ii)
Ii = I;
I = 100;
Ish = I-Ii;
Rsh = R*Ii/Ish;
mprintf('(i)Rse = %0.2f k ohm\n(ii)Rsh = %0.0f m ohm',Rse/1000,Rsh*1000);
