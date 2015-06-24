// Exa 13.15
clc;
clear;
close;
// Given data
f = 800;// in Hz
D = 0.6;
C = 0.1;// in µF
C = C * 10^-6;// in F
// Formula f= 1.44/((R_A+2*R_B)*C)
// R_A+2*R_B= 1.44/(f*C)                  (i)
// D= (R_A+R_B)/(R_A+2*R_B) or
// R_B= (1-D)/(2*D-1)*R_A           (ii)
// From eq (i) and (ii)
R_A= 1.44/(f*C*(1+2*((1-D)/(2*D-1))));// in ohm
R_B=  (1-D)/(2*D-1)*R_A;// in ohm
disp(R_A*10^-3,"The value of R_A in kΩ is : ");
disp(R_B*10^-3,"The value of R_B in kΩ is : ");



