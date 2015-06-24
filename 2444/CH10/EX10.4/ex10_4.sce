// Exa 10.4
clc;
clear;
close;
format('v',6)
// Given data
T= 500*10^-6;// in sec
h_femin = 25;// unit less
I_CEsat = 5;// in mA
I_CEsat = I_CEsat * 10^-3;// in A
V_CC = 10;// in V
V_BB = 4;// in V
V_CEsat = 0.4;// in V
V_BEsat = 0.8;// in V
V_BEoff = -1;// in V
R_C2 = (V_CC-V_CEsat)/I_CEsat;// in ohm
R_C1= R_C2;// in ohm
disp(R_C1*10^-3,"The value of R_C1 in k ohm is");
disp(R_C2*10^-3,"The value of R_C2 in k ohm is");
I_B2min = I_CEsat/h_femin;// in A
I_B2actual = 1.5*I_B2min;// in A
R = (V_CC-V_BEsat)/(I_B2actual);// in ohm
disp(R*10^-3,"The value of R in k ohm is");
C= T/(0.693*R);// in F
disp(C*10^6,"The value of C in µF is : ")
R1= poly(0,'R1');
R2= 2.143*R1;// in ohm
// I_B1actual= (V_CC-V_BE1sat)/(R_C+R1) - (V_BE1sat+V_BB)/R2 and R2= 2.143*R1 so
R1= I_B2actual*R2*(R1+R_C1)-V_CC*R2+V_BEsat*R2+R1*V_BEsat+R1*V_BB+R_C1*V_BEsat+R_C1*V_BB;
R1= roots(R1);// in ohm
R1= R1(1);// in ohm
R1= R1*10^-3;// in kohm
R2= 2.143*R1;// in k ohm
disp(R1,"The value of R1 in kΩ is : ")
disp(R2,"The value of R2 in kΩ is : ")
R1= R1*10^3;// in ohm
R1C1= 1*10^-6;// in F
C1= R1C1/R1;// in F
C1= C1*10^12;// in pF
disp(C1,"The value of C1 in pF is : ")
