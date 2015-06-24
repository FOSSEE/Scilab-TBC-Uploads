//ex5.4
V_EE=10;
V_BE=0.7;
B_DC=150;
R1=22*10^3;
R2=10*10^3;
R_C=2.2*10^3;
R_E=1*10^3;
R_IN_base=B_DC*R_E;    //R_IN_base>10*R2,so it can be neglected
disp(R_IN_base,'input resistance in ohms as seen from base. it can be neglected as it is greater than 10 times R2')
V_B=(R1/(R1+R2))*V_EE;
V_E=V_B+V_BE;
I_E=(V_EE-V_E)/R_E;
I_C=I_E;
V_C=I_C*R_C;
V_EC=V_E-V_C;
disp(I_C,'I_C collector current in amperes')
disp(V_EC,'V_EC emitter-collector voltage in Volts')