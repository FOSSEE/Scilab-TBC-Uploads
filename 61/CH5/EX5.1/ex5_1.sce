//ex5.1
V_BB=10;
V_CC=20;
B_DC=200;
R_B=47*10^3;
R_C=330;
V_BE=0.7;
I_B=(V_BB-V_BE)/R_B;
I_C=B_DC*I_B;    //Q POINT
V_CE=V_CC-I_C*R_C;    //Q POINT
I_C_sat=V_CC/R_C;
I_c_peak=I_C_sat-I_C;
I_b_peak=I_c_peak/B_DC;
disp(I_C,'q point of I_C in amperes')
disp(V_CE,'Q point of V_CE in volts')
disp(I_b_peak,'peak base current in amperes')