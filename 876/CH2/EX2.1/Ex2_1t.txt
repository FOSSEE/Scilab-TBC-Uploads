//caption:Find maximum and minimum value of resistor
//Ex2.1
clc
clear
close
R=100//magnitude of resistor(in ohm)
Lmin=-5//minimum limiting error(in %)
Lmax=5//maximum limiting error(in %)
Le=(R*Lmax)/100
Rmax=R+Le
disp(Rmax,'maximum value of resistor(in ohm)=')
Rmin=R-Le
disp(Rmin,'minimum value of resistor(in ohm)=')