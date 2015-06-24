// Exa Misc. 6.8
clc;
clear;
close;
format('v',6)
// Given data
R_F = 120;// in k ohm
Rdas1 = 6;// in k ohm
Rddas1 = 3;// in k ohm
R1 = Rdas1;// in k ohm
// For switch position-1 , the closed loop voltage gain,
Ao = 1+(R_F/R1);
disp(Ao,"The closed loop voltage gain for switch position-1 is : ");
R1 = (Rdas1*Rddas1)/(Rdas1+Rddas1);// in k ohm
// For switch position-2, the closed loop voltage gain, 
Ao = 1+(R_F/R1);
disp(Ao,"The closed loop voltage gain for switch position-2 is : ");
