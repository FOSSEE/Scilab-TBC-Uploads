// Exa 10.2
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 20;// in V
V_BB = 20;// in V
R_C2 = 1;// in k ohm
R_C2 = R_C2 * 10^3;// in ohm
R_C1 = R_C2;// in  ohm
f = 500;// in Hz
h_fe = 50;// unit less
PW = 0.2;// in ms
PW = PW*10^-3;// in sec
V_CEsat = 0.3;// in V
V_BEsat = 0.7;// in V
I_CEsat= (V_CC-V_CEsat)/R_C1;// in A
I_Bmin= I_CEsat/h_fe;// in A
I_B= 1.5*I_Bmin;// in A
R= (V_BB-V_BEsat)/I_B;// in ohm
R= floor(R*10^-3);// in k ohm
R1=R;// in k ohm
R2= R1;// in k ohm
T= 1/f;// in sec
D_cycle= PW/T;
T2= D_cycle*T;//sec
T1= T-T2;// in sec
C1= T1/(0.693*R2);// in mF
C1= C1*10^3;// in µF
C2= T2/(0.693*R1);// in mF
C2= C2*10^3;// in µF
disp(R1,"The value of R1 in k ohm is : ")
disp(R2,"The value of R2 in k ohm is : ")
disp(C1,"The value of C1 in µF is : ")
disp(C2,"The value of C2 in µF is : ")
