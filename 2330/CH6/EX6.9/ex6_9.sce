// Example 6.9
format('v',5)
clc;
clear;
close;
// given data
bita= 150;
R1= 10*10^3;// in Ω
R2= 2.2*10^3;// in Ω
R_E= 1*10^3;// in Ω
V_CC= 10;// in V
V_BE= 0.7;// in V
Vt= 25*10^-3;// in V
V_B= R2*V_CC/(R1+R2);// in V
V_E= V_B-V_BE;// in V
// The emitter current,
I_E= V_E/R_E;// in A
r_desh_e= Vt/I_E;// in Ω
Zin_base= bita*r_desh_e;// in Ω
// The input impedance of each stage 
Zin= R1*R2*Zin_base/(R1*R2+R1*Zin_base+R2*Zin_base);// in Ω
Zin= Zin*10^-3;// in k ohm
disp(Zin,"The input impedance of each stage in kΩ is : ")

