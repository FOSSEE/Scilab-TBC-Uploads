// Exa 2.5
clc;
clear;
close;
// Given data
R1= 1;// in kΩ
R2= 2;// in kΩ
R3= 4;// in kΩ
R4= 8;// in kΩ
R5= 1;// in kΩ
R6= 3 ;// in kΩ
Vc= -1;// in V
// V_A= Vout*R5/(R5+R6)     (i)
// Applying Kirchhoff's law at node B and A
// V_B*(1/R3+1/R2) -Vc/R3 = Vout*R5/(R2*(R5+R6))
// V_B/R2 +1= 3*Vout*R5/(R2*(R5+R6))        (ii)
Vout= (R2+R6)/(3*R6/R3+Vc/R2);// in volts
disp(Vout,"The output voltage in volts is 20/7 volts or ")
