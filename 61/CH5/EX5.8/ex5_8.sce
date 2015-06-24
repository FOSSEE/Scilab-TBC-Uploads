//ex5.8
V_CC=10;
B_DC=100;
R_C=10*10^3;
R_B=100*10^3;
V_BE=0.7;
I_C=(V_CC-V_BE)/(R_C+(R_B/B_DC));
V_CE=V_CC-I_C*R_C;
disp(I_C,'Q point of collector current in amperes')
disp(V_CE,'Q point of collector-emitter voltage in volts' )