// Example 6.10
format('v',5)
clc;
clear;
close;
// given data
bita= 150;
R1= 10*10^3;// in Ω
R2= 2.2*10^3;// in Ω
R_E= 1*10^3;// in Ω
Rs= 1*10^3;// in Ω
R_C= 3.6*10^3;// in Ω
R_L= 1.5*10^3;// in Ω
V_CC= 10;// in V
V_BE= 0.7;// in V
Vt= 25*10^-3;// in V
Vin= 1*10^-3;// in V
V_B= R2*V_CC/(R1+R2);// in V
V_E= V_B-V_BE;// in V
I_E= V_E/R_E;// in A
r_desh_e= Vt/I_E;// in Ω
Zin_base= bita*r_desh_e;// in Ω
Zin= R1*R2*Zin_base/(R1*R2+R1*Zin_base+R2*Zin_base);// in Ω
Vb1= Zin*Vin/(Rs+Zin);// in V
r_L= R_C*Zin/(R_C+Zin);// in Ω
V_B= R2*V_CC/(R1+R2);// in V
V_E= V_B-V_BE;// in V
I_E= V_E/R_E;// in A
r_desh_e= Vt/I_E;// in Ω
A1= r_L/r_desh_e;
Vb2= A1*Vb1;// in V
r_L= R_C*R_L/(R_C+R_L);// in Ω
A2= r_L/r_desh_e;
// The ac output voltage across the final load resistor 
Vout= A2*Vb2;// in V
A= A1*A2;
Vout= A*Vb1;// in V
disp(Vout,"The ac output voltage across the final load resistor in volts is : ")




