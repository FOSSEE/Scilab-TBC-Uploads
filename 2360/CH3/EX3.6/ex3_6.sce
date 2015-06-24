// Exa 3.6
format('v',7);clc;clear;close;
// Given data
// The first range is 0-10 mA
I1 = 10;//in mA
Im = 2;// in mA
Rm = 75;// in ohm
R1 = (Im*Rm)/(I1-Im);// in ohm
disp(R1,"The value of R1 in ohm is");
// Second range is 0-50 mA
I2 = 50;// in mA
R2 = (Im*Rm)/(I2-Im);// in ohm
disp(R2,"The value of R2 in ohm is");
// The third range is 0-100 mA
I3 = 100;// in mA
R3 = (Im*Rm)/(I3-Im);// in ohm
disp(R3,"The value of R3 in ohm is");
