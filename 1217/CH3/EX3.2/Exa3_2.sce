//Exa 3.2
clc;
clear;
close;
// given data
AF=100;//unitless
A=2*10^5;//unitless
Ri=1;//in Mohm
Ro=75;//in ohm
//let R1 =1 ohm
R1=1;//in ohm
//formula : AF=1+RF/R1
RF=(AF-1)*R1;//in kohm
B=1/AF;//unitless
RiF=(1+A*B)*Ri*10^6;//in ohm
RoF=Ro/(1+A*B);//in ohm
disp(RF,"Value of RiF in kohm is : ");
disp(RiF,"Value of RiF in ohm is : ")
disp(RoF,"Value of RoF in ohm is : ")