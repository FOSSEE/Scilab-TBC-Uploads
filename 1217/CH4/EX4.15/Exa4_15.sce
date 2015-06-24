//Exa 4.15
clc;
clear;
close;
// given data
Gain=10;//Unitless
fb=10;//in KHz
//Assuming fa=fb/10
fa=fb/10;//in KHz
// Formula : fa=1/(2*pi*RF*CF)
RFCF=1/(2*%pi*fa);
//Assuming R1=1Kohm
R1=1;//in Kohm
RF=10*R1;//in Kohm
CF=RFCF/RF;//in uF
Rcomp=(R1*RF)/(R1+RF);// in Kohm
disp(RF,"Value of RF in Kohm is : ");
disp(CF,"Value of CF in uF is : ");
disp(Rcomp*1000,"Value of Rcomp in ohm is : ");