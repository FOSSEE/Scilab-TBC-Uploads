// Example 5.9 :Analyse the circuit to find node voltages and branch currents
// assuming that the transistor is saturated 
V_CC=-5; // (V)
V_EE=5; // (V)
R_B=10000; // (ohm)
R_C=10000; // (ohm)
R_E=1000; // (ohm)
V_EB=0.7; // (V)
V_ECsat=0.2; // (V)
// using the relation I_E=I_C+I_B
V_B=3.75/1.2; //(V)
disp(V_B,"Base voltage (V)")
V_E=V_B+V_EB;
disp(V_E,"Emitter voltage (V)")
V_C=V_E-V_ECsat;
disp(V_C,"Collector voltage (V)")
I_E=(V_EE-V_E)/R_E;
disp(I_E,"Emitter current (A)")
I_B=V_B/R_B;
disp(I_B,"Base current (A)")
I_C=(V_C-V_CC)/R_C;
disp(I_C,"Collector current (A)")
Bforced=I_C/I_B; // Value of forced beta
disp(Bforced, "Forced Beta value")