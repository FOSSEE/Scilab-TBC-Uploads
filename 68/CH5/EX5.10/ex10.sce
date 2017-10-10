// Exampe 5.10 : Analyse the circuit to find node voltages and branch currents
V_CC=15; // (V)
R_C=5000; // (ohm)
R_B1=100*10^3; // (ohm)
R_B2=50*10^3; // (ohm)
R_E=3000; // (ohm)
V_BE=0.7; // (V)
B=100; // beta value
V_BB=V_CC*R_B2/(R_B1+R_B2);
disp(V_BB,"V_BB (V)")
R_BB=R_B1*R_B2/(R_B1+R_B2);
disp(R_BB,"R_BB (ohm)")
I_E=(V_BB-V_BE)/(R_E +(R_BB/(B+1)));
disp(I_E,"Emiter current (A)")
I_B=I_E/(B+1)
disp(I_B,"Base current (A)")
V_B=V_BE+I_E*R_E;
disp(V_B,"Base voltage (V)")
a=B/(B+1); // alpha value
I_C=a*I_E
disp(I_C,"Collector current (A)")
V_C=V_CC-I_C*R_C;
disp(V_C,"Collector voltage (V))")