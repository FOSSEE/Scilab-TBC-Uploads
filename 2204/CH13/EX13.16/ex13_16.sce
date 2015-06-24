// Exa 13.16
clc;
clear;
close;
// Given data
f = 700;// in Hz
D = 0.5;
C = 0.1;// in µF
C = C * 10^-6;// in F
// Formula f= 1.44/((R_A+2*R_B)*C)
// R_A+2*R_B= 1.44/(f*C)                  (i)
// D= (R_A+R_B)/(R_A+2*R_B) or
// R_A+R_B=D*1.44/(f*C)
// From eq (i) and (ii)
R_B=round(1.44/(f*C))*(1-D);
R_A= round(D*1.44/(f*C))-R_B;
//R_A= 1.44/(f*C*(1+2*((1-D)/(2*D-1))));// in ohm
//R_B=  (1-D)/(2*D-1)*R_A;// in ohm
disp(round(R_A),"The value of R_A in Ω is : ");
disp((R_B*10^-3),"The value of R_B in kΩ is : ");



