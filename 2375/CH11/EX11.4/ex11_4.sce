// Exa 11.4
clc;
clear;
close;
format('v',5)
// Given data
f= 100*10^3;// in Hz
h_fe = 100;
h_ie = 1* 10^3;// in ohm
V_CE = 5;// in V
V_BE= 0.7;// in V
I_C = 1* 10^-3;// in A
I_B= 0.01*10^-3;// in A
V_CC = 20;// in V
R_E = 1* 10^3;// in ohm
I_E = I_C;// in A
R_C = (V_CC-V_CE-(I_E*R_E))/I_C;// in ohm
R = 10*10^3;// in k ohm
k = R_C/R;
h_fe=(23+29/k+4*k);
// Formula f= 1/(2*%pi*R*C*sqrt(6+4*k))
C= 1/(2*%pi*R*f*sqrt(6+4*k));// in F
// R= R3+R1 || R2+h_ie = R3+h_ie (approx)
R3= R-h_ie;// in ohm
V_B= V_BE+I_E*R_E;// in V
R2= 10*10^3;// in ohm (assumed value)
I_R2= V_B/R2;// current in R2 in A
V_R1= V_CC-V_B;// drop across R1 in V
I_R1= I_R2+I_B;// in A
R1= V_R1/I_R1;// in ohm
R_E= R_E*10^-3;// in k ohm
R_C= R_C*10^-3;// in k ohm
R= R*10^-3;// in k ohm
R1= R1*10^-3;// in k ohm
R2= R2*10^-3;// in k ohm
R3= R3*10^-3;// in k ohm
C=C*10^12;// in pF
disp(R_E,"The value of R_E in k ohm is");
disp(R_C,"The value of R_C in k ohm is");
disp(R,"The value of R in k ohm is");
disp("The value of h_fe >= "+string(h_fe));
disp(C,"The value of C in pF is : ")
disp(R3,"The value of R3 in k ohm is : ")
disp(R2,"The value of R2 in k ohm is : ")
disp(R1,"The value of R1 in k ohm is : ")


