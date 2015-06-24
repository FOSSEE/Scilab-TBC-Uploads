//Example 1.15.b.ii// loading error
clc;
clear;
close;
//given data :
Rv=125; // internal resistance in kilo-ohm
V=60; // in volts
I=1.2; // ampere
Rt=V/I;
Ra=Rt;
Rat=((Rt/1000)*Rv)/(Rv-(Rt/1000));
Le=((Rat-(Ra/1000))/Rat)*100;
disp(Le,"percentage loading error,Le(%) = ")
