//ex5.3
B_DC=100;
R1=10*10^3;
R2=5.6*10^3;
R_C=1*10^3;
R_E=560;
V_CC=10;
V_BE=0.7
R_IN_base=B_DC*R_E;
//We can neglect R_IN_base as it is equal to 10*R2
disp(R_IN_base,'input resistance seen from base, which can be neglected as it is 10 times R2')
V_B=(R2/(R1+R2))*V_CC;
V_E=V_B-V_BE;
I_E=V_E/R_E;
I_C=I_E;
V_CE=V_CC-I_C*(R_C+R_E);
disp(V_CE,'V_CE in volts')
disp(I_C,'I_C in amperes')
disp('Since V_CE>0V, transistor is not in saturation')