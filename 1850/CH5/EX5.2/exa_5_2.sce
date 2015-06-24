// Exa 5.2
clc;
clear;
close;
// Given data
Rf= 12;// in k ohm
Rs1= 12;// in k ohm
Rs2= 2;// in k ohm
Rs3= 3;// in k ohm
Vi1= 9;// in volt
Vi2= -3;// in volt
Vi3= -1;// in volt
Vout= -Rf*[Vi1/Rs1+Vi2/Rs2+Vi3/Rs3];// in volt
disp(Vout,"Output voltage in volt");
