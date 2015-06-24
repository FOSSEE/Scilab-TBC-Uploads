//Exa 1.25
clc;
clear;
close;
//given data
BETAmin=80;//unitless
BETAmax=120;//unitless
IE=400;//in uA
VT=25;//in mvolts
VEE=15;//in volts
VCC=15;//in volts
VBE=0.7;//in volts
VEB=-0.7;//in vol
IE1=IE/2;//in uA
IE2=IE1;//in uA
IBmax=IE1/(1+BETAmin);//in uA
IBmin=IE1/(1+BETAmax);//in uA
Iiomax=IBmax-IBmin;//in uA
disp(IBmax,"Largest possible input bias current in uA is :");
disp(IBmin,"smallest possible input bias current in uA is :");
disp(Iiomax,"Largest possible input offset current in uA is :");