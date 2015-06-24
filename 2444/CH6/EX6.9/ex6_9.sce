// Exa 6.9
clc;
clear;
close;
format('v',7)
// Given data
Vout = 12.5;// in V
Vin = 0.25;// in V
Av = Vout/Vin;// unit less
disp(Av,"The voltage gain without feed back is ");
Vin = 1.5;// in V
Avf = round(Vout/Vin);// unit less
// Avf = Av/(1+(Beta*Av));
Beta = ((Av/Avf)-1)/Av;// unit less
Beta = Beta*100;// in %
disp(Beta,"The value of ß in % is");
