//Exa 3.2
clc;
clear;
close;
// given data
AF=1;//unitless
B=1;//unitless
A=2*10^5;//unitless
fo=5;//in Hz
Ri=1;//in Mohm
Ro=75;//in ohm
//let 1+AB=A; as A>>>1
RiF=A*Ri*10^6;//in ohm
RoF=Ro/A;//in ohm
fF=fo*A;//in ohm
disp(RiF,"Value of RiF in ohm is : ")
disp(RoF,"Value of RoF in ohm is : ")
disp(fF/10^6,"Value of fF in MHz is : ")