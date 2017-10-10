// Exa 3.13
format('v',5);
clc;
clear;
close;
// Given data 
V_B= 0;// in V
V_EB= 0.7;// in V
bita=100;
V_EC= 0.2;// in V
V_E= V_EB+V_B;// in V
V_CC= 5;// in V
R_C= 1;// in kΩ
R_C=R_C*10^3;// in Ω
R_B= 10;// in kΩ
R_B= R_B*10^3;// in Ω
// V_E= V_B+V_EB        (i)
// V_C= V_E-V_EC= V_B+V_EB-V_EC     (ii)
// I_E= (V_CC-V_E)/R_C= (V_CC-V_B-V_EB)/R_C     (iii)
// I_B= V_B/R_B                     (iv)
// I_C= (V_C+V_CC)/R_C= (V_B+V_EB-V_EC+V_CC)/R_B      (v)
// By using relationship, I_E= I_B+I_C
V_B= (9*V_CC-11*V_EB+V_EC)/12;// in V
V_E= V_B+V_EB;// in V
V_C= V_B+V_EB-V_EC;// in V
I_E= (V_CC-V_B-V_EB)/R_C// in amp
I_C= (V_B+V_EB-V_EC+V_CC)/R_B;// in amp
I_B= V_B/R_B;// in amp
disp(V_B,"The value of V_B in volts is : ")
disp(V_E,"The value of V_E in volts is : ")
disp(V_C,"The value of V_C in volts is : ")
disp(I_E*10^3,"The value of I_E in mA is : ")
disp(I_C*10^3,"The value of I_C in mA is : ")
disp(I_B*10^3,"The value of I_B in mA is : ")
