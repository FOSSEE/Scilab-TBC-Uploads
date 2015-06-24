// Exa 13.12
clc;
clear;
close;
// Given data
C = 0.22;// in µF
C=C*10^-6;// in F
T_on = 10;// in ms
T_on = T_on * 10^-3;// in s
V_CC = 15;// in V
V_BE = 0.7;// in V
V_EC = 0.2;// in V
V_LED= 1.4;// in V
I_LED= 20*10^-3;// in A
R = T_on/(C*1.1);// in ohm
R = R *10^-3;// in k ohm
disp("Values for first circuit : ")
disp(R,"The value of R in kΩ is");
V_o = V_CC-(2*V_BE) - V_EC;// in V
disp(V_o,"The output voltage in V is");
R_LED = (V_o - V_LED)/(I_LED);// in ohm 
disp(R_LED,"The value of R_LED in Ω is : ")
// Part (ii)
f= 1*10^3;// in Hz
C=0.01*10^-6;// in F
D= 95/100;// duty cycle
// Formula f= 1.44/((R1+2*R2)*C)
// R1+2*R2= 1.44/(f*C)                  (i)
// D= (R1+R2)/(R1+2*R2) or
// R2= (1-D)/(2*D-1)*R1           (ii)
// From eq (i) and (ii)
R1= 1.44/(f*C*(1+2*((1-D)/(2*D-1))));// in ohm
R2=  (1-D)/(2*D-1)*R1;// in ohm
disp("Values for second circuit : ")
disp(R1*10^-3,"The value of R1 in kΩ is : ");
disp(R2*10^-3,"The value of R2 in kΩ is : ");

