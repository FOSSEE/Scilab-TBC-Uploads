//Caption:Determine the charcteristic wave impedance
//Exa:4.16
clc;
clear;
close;
c=3*10^10;//in cm/s
f=10*10^9;//in Hz
a=3;//in cm
b=2;//in cm
n=120*%pi;
wl_o=c/f;
wl_c=2*a*b/sqrt(a^2+b^2);
Z_TM=n*sqrt(1-(wl_o/wl_c)^2);
disp(Z_TM,'Characteristic impedance (in ohms) =');

//answer in book is wrongly written as 61.618 ohms