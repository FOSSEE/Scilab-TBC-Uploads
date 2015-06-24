//Example 3.9.2// full scale deflection current
clc;
clear;
close;
//given data :
format('v',5)
Vin=10;// in volts
Rs=200;//in k-ohm
Rm=400;// in ohm
I_fsd=Vin/((Rs*10^3)+Rm);
disp(I_fsd*10^6,"full scale deflection current,I_fsd(micro-A) = ")
