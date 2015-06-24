//ex4.9
V_CC=10;
B_DC=200;
R_C=10^3;
V_IN=0;
V_CE=V_CC;
disp(V_CE,'when V_IN=0, transistor acts as open switch(cut-off) and collector emitter voltage in volts is')
//now when V_CE_sat is neglected
I_C_sat=V_CC/R_C;
I_B_min=I_C_sat/B_DC;
disp(I_B_min,'minimum value of base current in amperes to saturate transistor')
V_IN=5;
V_BE=0.7;
V_R_B=V_IN-V_BE;    //voltage across base resiatance
R_B_max=V_R_B/I_B_min;
disp(R_B_max,'maximum value of base resistance in ohms when input voltage is 5V')