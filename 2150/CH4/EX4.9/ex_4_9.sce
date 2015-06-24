// Example 4.9
clc;
clear;
close;
// Given data
V_BB= 1.8;// in V
V_BE= 0.7;// in V
R1= 10;// in kΩ
R2= 2.2;// in kΩ
R_E= 1;// in kΩ
bita= 200;
R= R1*R2/(R1+R2);// in kΩ
R=R*10^3;// in Ω
R_E= R_E*10^3;// in Ω
I_E= (V_BB-V_BE)/(R_E+R/bita);// in mA
disp(I_E*10^3,"The emitter current in mA is : ")
disp("This is extremely close to 1.1 mA, the value we get with the simplified analysis.")
