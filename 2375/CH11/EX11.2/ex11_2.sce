// Exa 11.2
clc;
clear;
close;
format('v',5)
// Given data
Av= 29;
I_Bmax = 0.5*10^-6;// in A
I1= 100*I_Bmax
Vo_sat = 0.9;// in V
V_CC = 9.0;// in V
V_EE= -9;// in V
V1= 9/Av;// in V
R1= V1/I1;// in ohm
R1= 5.6*10^3;// in ohm (standard value)
Rf= Av*R1;// in ohm
Rf= 180*10^3;// in ohm
R3= Rf;// in ohm
R=R1;// in ohm
C= 1/(2*%pi*R*sqrt(6)*1000);// in F
R= R*10^-3;// in k ohm
Rf= Rf*10^-3;// in k ohm
C= C*10^6;// in µF
disp(R,"The value of R and R1 in k ohm is : ")
disp(Rf,"The value of Rf and R3 in k ohm is : ")
disp(C,"The value of C in µF is : ")
disp(V_CC,"The value of V_CC in volts is : ")
disp(V_EE,"The value of V_EE in volts is : ")
