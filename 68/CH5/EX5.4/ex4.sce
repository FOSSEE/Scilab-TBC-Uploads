// Example 5.4 : Analyse the circuit to find node voltages and branch currents
V_BB= 4; // (V)
V_CC=10; // (V)
V_BE=0.7; // (V)
b=100; // beta = 100
R_E=3.3*10^3; // (ohm)
R_C=4.7*10^3; // (ohm)
V_E=V_BB-V_BE;
disp(V_E,"Emitter voltage (V)")
I_E=(V_E-0)/R_E;
disp(I_E,"Emitter current (A)")
a=b/(b+1) // alpha value
I_C=I_E*a;
disp(I_C,"Collector current (A)")
V_C=V_CC-I_C*R_C; // Applying ohm's law 
disp(V_C,"Collector voltage (V)")
I_B=I_E/(b+1);
disp(I_B,"Base current (A)")