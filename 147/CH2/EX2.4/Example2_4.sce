//Resistance R, Voltage V, Current I
close();
clear;
clc;
R1 = 5;//ohm
R2 = 15;
R3 = 5;
R4 = 4;
R5 = 12;
V5 = 132;//V
I = V5/R5;
I1 = (R1+R2)/(R1+R2+R3)*I;
I2 = R3/(R1+R2+R3)*I;
mprintf('I1 = %0.1f A\nI2 = %0.1f A',I1,I2);