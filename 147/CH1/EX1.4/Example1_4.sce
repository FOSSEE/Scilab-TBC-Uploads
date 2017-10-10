//Resistance R
close();
clear;
clc;
R1 = 1;//ohm
R2 = 2;
R3 = 3;
R4 = 6;
R5 = 6;
R6 = 16;
R7 = 8;
//Resistance between cd 'Rcd'
Rcd = (R2*R3*R4)/(R2*R3+R3*R4+R4*R2);
Raes = R1+Rcd+R5;
Rae = Raes*R7/(Raes+R7);
//Resistance between ab 'Rab'
Rab = Rae+R6;
mprintf('Rab = %0.0f ohm',Rab);