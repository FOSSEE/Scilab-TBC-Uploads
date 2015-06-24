// Exa 5.3
clc;
clear;
close;
format('v',5)
// Given data
R_S = 1;// in k ohm
R1 = 20;// in k ohm
R2 = 10;// in  k ohm
R_C = 2;// in k ohm
R_E = 2;// in k ohm
R_L = 2;// in k ohm
V_BE = 0.7;// in V
V_T = 26*10^-3;// in V 
Beta = 100;// unite less
V_CC = 15;// in V
Cin = 10;// in µF
C_E = 20;// in µF
Cout = 1;// in µF
V_B = R2/(R1+R2) *V_CC;// in V
//I_E = V_E/R_E = (V_B-V_BE)/(R_E*10^3);// in A
I_E = (V_B-V_BE)/(R_E*10^3);// in A
r_e = V_T/I_E;// in ohm
r_e= r_e*10^-3;// in k ohm
// Av = Vout/Vin = ( (-(R_C*R_L)/(R_C+R_L))/r_e );
Av = ( (-(R_C*R_L)/(R_C+R_L))/(r_e) );
Rin = (R1*R2*Beta*r_e)/((R1*R2)+(R2*Beta*r_e)+(Beta*r_e*R1));// in  k ohm
Zin = Rin;// in k ohm
// Vin = (Rin/(Rin+R_S))*V_S;
Vin_by_V_S = Rin/(Rin+R_S);
Avi = Av*Vin_by_V_S;// unite less
disp(Avi,"The voltage gain is");
f_Li = 1/( 2*%pi*(R_S+Rin)*10^3*Cin*10^-6 );// in Hz
disp(f_Li,"The lower cutoff frequency in Hz is");

// Note: The wrong value is putted of Rin to evaluating the value of f_Li, So there is some difference between coding and the answer of the book.
