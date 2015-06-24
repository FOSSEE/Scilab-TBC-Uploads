// Example 5.7: Analyse the circuit to find node voltages and branch currents
V_CC=-10; // (V)
R_E=2000; // (ohm)
R_C=1000; // (ohm)
V_EE=10; // (V)
V_E=0.7; // (V) emitter base junction will be forward biased with V_E=V_EB=0.7V
disp(V_E,"Emitter base junction is forward biased with V_E (V)")
I_E=(V_EE-V_E)/R_E;
disp(I_E,"Emitter current (A)")
B=100; // Assuming beta 100
a=B/(B+1);
I_C=a*I_E; // Assuming the transistor to operate in active mode
disp(I_C,"Collector current (A)")
V_C=V_CC+I_C*R_C;
disp(V_C,"Collector voltage (V)")
I_B=I_E/(B+1);
disp(I_B,"Base current (A)")