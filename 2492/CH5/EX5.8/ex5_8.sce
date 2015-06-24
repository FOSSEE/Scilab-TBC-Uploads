// Exa 5.8
format('v',5)
clc;
clear;
close;
// Given data
I_C = 1 ;// in A
bita= 200;
h_fe = bita;
R_C = 5*10^3;// in ohm
R_E = 2*10^3;// in ohm
R_S =600;// in ohm
R_L = 600;// in ohm
C1=10*10^-6;// in F
C2= C1;// in F
f_L= 20;// in Hz (lower cut-off frequency)
// R1||R2= 6;// in k ohm
r_e = 25/I_C;// in ohm
h_i = bita*r_e;// in ohm
// R_B= R1||R2=6;// in k ohm
R_B= 6*10^3;// in ohm
r_i = 5*10^3;// in ohm
Ri = (R_B*r_i)/(R_B+r_i);// in ohm
// The cut off frequency due to C1
f1= 1/(2*%pi*(Ri+R_S)*C1);// in Hz
disp(f1,"The cut-off frequency due to C1 in Hz is : ")
// The cut off frequency due to C2
f2= 1/(2*%pi*(R_C+R_L)*C2);// in Hz
disp(f2,"The cut-off frequency due to C1 in Hz is : ")
// The cut off frequency due to C_E, f_L= (1+h_fe)/(2*%pi*C_E*(R_S+h_ie)) or
C_E = (1+h_fe)/(2*%pi*f_L*(R_S+h_i));// in F
C_E =round(C_E * 10^6);// in µF
disp(C_E,"The value of C_E in µF is");
