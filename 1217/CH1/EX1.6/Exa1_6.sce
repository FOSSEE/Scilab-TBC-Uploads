//Exa 1.6
clc;
clear;
close;
//given data
Ad=50;//unitless
I=5;//in mA
VEE=15;//in Volts
VD=0.7;//in Volts
VT=25;//in mVolt
//desired value of emitter current is 5 mA
IE3=5;//in mA
RE=VD/(IE3*10^(-3));//in ohm
VB3=VEE-2*VD;//in volts
I2=IE3;//in mA
R2=VB3/I2;//in kohm
IE1=IE3/2;//in mA
IE2=IE1;//in mA
re=(2*VT)/IE3;//in ohm
RC=Ad*re;//in ohm
disp("Design values are :")
disp(RC,"Value of Rc in ohm is : ");
disp(RE,"Value of RE in ohm is : ");
disp(R2,"Value of R2 in kohm is : ");