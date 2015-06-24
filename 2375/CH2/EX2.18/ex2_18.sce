// Exa 2.18
clc;
clear;
close;
format('v',6)
// Given data
V_CC= 12;// in V
bita_min= 30;
R1= 15;// in k ohm
R2= 100;// in k ohm
R_C= 2.2;// in kohm
V_BB= -12;// in V
V_BE= 0.7;// in V
// Part (i)
Vi= 12;// in V
V_BEsat= 0.8;// in V
V_CEsat= 0.2;// in V
// Applying KVL to B-E circuit, Vi= I1*R1+V_BEsat or
I1= (Vi-V_BEsat)/R1;// in mA
// Applying KVL to -12 V supply,
I2= (V_BEsat-V_BB)/R2;// in mA
// Applying KVL to input loop,
I_B= I1-I2;// in mA
// Applying KVL to output loop, V_CC= I_C*R_C+V_CEsat or
I_C= (V_CC-V_CEsat)/R_C;// in mA
I_Bmin= I_C/bita_min;// in mA
if I_B>I_Bmin then
    disp("Part (a) :")
    disp("As the value of I_B ("+string(I_B)+" mA) is greater than the value of I_Bmin ("+string(I_Bmin)+" mA)")
    disp("Hence the transistor is in saturation region")
end
Vo= V_CC-I_C*R_C;// in V
disp(Vo,"The output voltage in volts is : ")

// Part (b)
I2= (V_CC+V_BE)/R2;// in mA
// and I1= (V_CC-V_BE)/R1;// in mA          (i)
I_B= I_Bmin;// in mA
I1= I2+I_Bmin;// in mA
// Now from eq(i)
R1= (V_CC-V_BE)/I1;// in k ohm
disp("Part (b)")
disp(R1,"The value of R1 in k ohm is : ")

// Part (c)
I_C= 0;// in mA
Vo= V_CC-I_C*R_C;// in V
disp("Part (c) : Transistor is in cutoff")
disp(Vo,"The value of Vo in volts is : ")

// Note: There is some difference between coding output and answer of the book. This is why because in the book the calculate value of I_C is 5.36 mA/ 30 = 0.178 mA while accurate value is 0.179 mA
 





