//Example 3.4.2 // shunt resistormultiplying factor and resistance
clc;
clear;
close;
//given data :
format('v',6)
Rsh=300;//in ohm
Rm=1500;//in ohm
m=1+(Rm/Rsh);
disp(m,"multiplying factor,m = ")
m1=40;
Rsh1=Rm/(m1-1);
disp(Rsh1,"the shunt resistor,Rsh1(ohm) = ")
