// Example 5.1
clc;
clear;
close;
// Given data
format('v',6);
C= 0.01;// in µF
C=C*10^-6;// in F
R_A= 2;// in kΩ
R_A=R_A*10^3;// in Ω
R_B= 100;// in kΩ
R_B=R_B*10^3;// in Ω
T_HIGH= 0.693*(R_A+R_B)*C;//charging period in second
T_LOW= 0.693*R_B*C;// discharging period in second
T= T_HIGH+T_LOW;// overall period of oscillations in second
f= 1/T;// frequency of oscillations in Hz
D= T_HIGH/T*100;// duty cycle in %
disp(f,"The frequency of oscillations in Hz is : ")
disp(D,"Duty cycle in % is : ")


