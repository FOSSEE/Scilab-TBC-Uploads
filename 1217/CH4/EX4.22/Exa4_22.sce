//Exa 4.22
clc;
clear;
close;
// given data
fa=1.5;//in KHz
fmax=1.5;//in KHz
C1=0.1;//in uF
RF=1/(2*%pi*fa*C1);//in Kohm
fb=10*fa;//in Khz
R1=1/(2*%pi*fb*C1);//in Kohm
CF=(R1*C1)/RF;//in uF
Rcomp=RF;//in Kohm
disp(RF,"Value of resistance RF in Kohm is : ")
disp(R1*1000,"Value of resistance R1 in ohm is : ")
disp(CF,"Value of Capacitance CF in uF is : ")
disp(Rcomp,"Value of resistance Rcomp in Kohm is : ")