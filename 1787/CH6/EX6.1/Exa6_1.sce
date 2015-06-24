//Exa 6.1
clc;
clear;
close;
//given data
IC=20;//in mA
Beta=50;//Unitless
IB=IC/Beta;//in mA
IE=IC+IB;//in mA
disp(IE,"Emitter current in mA : ");