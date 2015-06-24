//Exa 1.7
clc;
clear;
close;
//given data
Ri=600;//in kohm
Vopp=5;//in volts
VEE=15;//in volts
VT=25;//in mVolts
VD=0.7;//in Volts
BETAac=100;//unitless
BETAdc=100;//unitless
VBE=0.7;//in volts
BETAact=BETAac*BETAdc;//unitless
//formula : Ri=2*BETAact*(2*re1)
re1=Ri/(4*BETAact);//in ohm
//formula : re1=VT/IE1
IE1=(VT*10^(-3))/re1;//in mA
IE3=2*IE1;//in mA
RE=VD/(IE3*10^(-3));//in ohm
R2=(VEE-2*VD)/IE3;//in kohm
disp("Now terhe voltage drop across Rc determines the peak to peak output voltage swing.")
disp("We have given Vopp=5volts, sinve the output is balance i.e. differential the voltage drop across each collector resistor will become2.5Vpp or 1.25Volts.")
disp("In other words RcIc=1.25Volts. We have Ic=IE1=1.67mA")
IC=IE1;//in mA
RC=1.25/(IC*10^(-3));//in ohm
disp("Thus the Design components values are :")
disp(RC,"Value of Rc in ohm is : ");
disp(RE,"Value of RE in ohm is : ");
disp(R2,"Value of R2 in kohm is : ");
//Answer in the book is not as much accurate as calculated by Scilab