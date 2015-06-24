//Ex 1.1
clc;clear;close;
format('v',4);
R=3;//kohm
V=220;//V
//First Case
I=V/R;//mA
disp(I,"1st case : Current in the circuit(mA)");
//Second Case
Req=R+R;//ohm(Equivalent resistance)
I=V/Req;//mA
disp(I,"2nd case : Current in the circuit(mA)");
