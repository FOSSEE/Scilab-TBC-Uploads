// Example 5.7
clc;
clear;
close;
// Given data
format('v',6);
C1= 1000*10^-12;// in F
C2= 100*10^-12;// in F
f= 1*10^6;// in Hz
R1= 1*10^6;// in Ω (assume)
R2= 10*10^3;// in Ω (assume)
Rs= 800;// in Ω
VDD= 5;// in V
C_T= C1*C2/(C1+C2);//total capacitance in F
// At resonance, X_L= X_CT or 2*%pi*f*L= 1/(2*%pi*f*C_T), So
L= 1/((2*%pi*f)^2*C_T);// in H
L= L*10^3;// in mH
disp(L,"The value of inductance in mH is : ")
i_p= VDD/(R1+R2+Rs);//current through crystal in A
// Power dissipated in the crystal,
P_D= (0.707*i_p)^2*Rs;// in W
P_D= P_D*10^9;//in nW
disp(P_D,"The power dissipated in the crystal in nW is : ")


