//Example 3.30: Series resistance and loss angle
clc;
clear;
close;
//given data :
R2=100;// in ohm
R4=309;// in ohm
C3=100*10^-12;// in F
C4=0.5*10^-6;// in F
f=50;// in Hz
w=2*%pi*f;
Rs=C4*R2*10^-6/C3;
disp(Rs,"Series resistance,Rs(M-ohm) = ")
Cs=R4*C3*10^12/R2;
del=atand(w*Cs*Rs*10^-6);
disp(Cs,"capacitance is,(micro-F)=")
disp(del,"Loss angle,del(degree) = ")
