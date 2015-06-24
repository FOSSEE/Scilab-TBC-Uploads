// Exa Misc. 6.15
clc;
clear;
close;
format('v',6)
// Given data
//Output voltage of the amplifier, Vo = (1+(Rf/Rin))*Vin and voltage gain, Av = Vo/Vin = 1+(Rf/Rin)
Rf = 0;
Rin = 2;// in k ohm
Avmin = 1+(Rf/Rin);
Rf = 100;// in k ohm
// The maximum loop voltage gain 
Avmax = 1+(Rf/Rin);
disp(Avmax,"The maximum loop voltage gain is");
