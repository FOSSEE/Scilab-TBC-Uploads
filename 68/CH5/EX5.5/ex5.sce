// Example 5.5 : Analyse the circuit to find node voltages and branch currents
disp("Assuming active mode operation")
V_CC=10; // (V)
R_C=4.7*10^3; // (V)
R_E=3.3*10^3; // (ohm)
V_BE=0.7; // (V)
V_BB=6; // (V)
V_CEsat=0.2; // (V)
V_E=V_BB-V_BE; 
disp(V_E,"Emitter voltage (V)")
I_E=V_E/R_E;
disp(I_E,"Emitter current (A)")
V_C=V_CC-I_E*R_C; // I_E=I_C
disp(V_C,"Collector voltage (V)")
disp("Since V_C < V_B our assumption is wrong\n Hence its saturation mode operation")
V_E=V_BB-V_BE;
disp(V_E,"Emitter voltage (V)")
I_E=V_E/R_E;
disp(I_E,"Emitter current (A)")
V_C=V_E+V_CEsat;
disp(V_C,"Collector voltage (V)")
I_C=(V_CC-V_C)/R_C;
disp(I_C,"Collector current (A)")
I_B=I_E-I_C;
disp(I_B,"Base current (A)")
Bforced=I_C/I_B; // transistor is made to operate at a forced beta value
disp(Bforced,"forced beta")