//Exa 3.1
clc;
clear;
close;
// given data
R1=1.5;//in kohm
RF=15;//in kohm
A=2*10^5;//unitless
Ri=1;//in Mohm
Ro=75;//in ohm
fo=5;//in Hz
AF=1+RF/R1;//unitless
B=1/AF;//unitless
RiF=(1+A*B)*Ri*10^6;//in ohm
RoF=Ro/(1+A*B);//in ohm
fF=fo*(1+A*B);//in ohm
disp(AF,"Close loop voltage gain AF is : ");
disp(RiF,"Value of RiF in ohm is : ")
disp(RoF,"Value of RoF in ohm is : ")
disp(fF/1000,"Value of fF in KHz is : ")