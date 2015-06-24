//Exa 3.5
clc;
clear;
close;
// given data
A=2*10^5;//unitless
Ri=1;//in Mohm
Ro=75;//in ohm
fo=5;//in Hz
R1=50;//in kohm
RF=300;//in kohm
K=RF/(R1+RF);//unitless
B=R1/(R1+RF);//unitless
AF=-(A*K/(1+A*B));//unitless
RiF=R1;//in kohm ; ideal
RoF=Ro/(1+A*B);//in ohm
fF=-(A*K*fo/AF);//in Hz
disp(AF,"Close loop voltage gain AF is : ");
disp(RiF,"Value of RiF in ohm is : ")
disp(RoF,"Value of RoF in ohm is : ")
disp(fF/1000,"Value of fF in KHz is : ")