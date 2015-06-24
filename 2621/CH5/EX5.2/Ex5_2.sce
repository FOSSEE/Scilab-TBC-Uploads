// Example 5.2
clc;
clear;
close;
// Given data
format('v',6);
C= 1;// in µF
C=C*10^-6;// in F
R_A= 4.7;// in kΩ
R_A=R_A*10^3;// in Ω
R_B= 1;// in kΩ
R_B=R_B*10^3;// in Ω
T_on= 0.693*(R_A+R_B)*C;//positive pulse width in second
T_on= T_on*10^3;// in ms
T_off= 0.693*R_B*C;// pulse width in second
T_off= T_off*10^3;// in ms
f= 1.4/((R_A+2*R_B)*C);// free running frequency in Hz
D= round((R_A+R_B)/(R_A+2*R_B)*100);// in %
disp(T_on,"The positive pulse width in ms")
disp(T_off,"The negative pulse width in ms")
disp(f,"The frequency of oscillations in Hz is : ")
disp(D,"Duty cycle in % is : ")


