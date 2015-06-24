//Example 3.5.1 //
clc;
clear;
close;
//given data :
format('v',5)
Rm=100;// in ohm
Im=1;
//for range 0-20 mA
I1=20;
m=I1/Im;
Rsh1=Rm/(m-1);
disp(Rsh1,"the shunt resistor,Rsh1(ohm) = ")
//for the range of 0-100 mA
I2=100;
m=I2/Im;
Rsh2=Rm/(m-1);
disp(Rsh2,"the shunt resistor,Rsh2(ohm) = ")
//for the range 0-200 mA
I3=200;
m=I3/Im;
Rsh3=Rm/(m-1);
disp(Rsh3,"the shunt resistor,Rsh3(ohm) = ")
