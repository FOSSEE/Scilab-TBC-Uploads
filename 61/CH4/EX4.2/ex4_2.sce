//ex4.2
V_BE=0.7;
B_DC=150;
V_BB=5;
V_CC=10;
R_B=10*10^3;
R_C=100;
I_B=(V_BB-V_BE)/R_B;
I_C=B_DC*I_B;
I_E=I_C+I_B;
V_CE=V_CC-I_C*R_C;
V_CB=V_CE-V_BE;
disp(I_B,'base current in amperes')
disp(I_C,'collector current in amperes')
disp(I_E,'emitter current in amperes')
disp(V_CE,'collector to emitter voltage in volts')
disp(V_CB,'collector to base voltage in volts')