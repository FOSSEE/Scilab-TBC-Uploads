// Example 5.8 : Analyse the circuit to find node voltages and branch currents
V_CC= 10; // (V)
R_C=2000; // (ohm)
V_BB=5; // (V)
V_BE=0.7;
R_B=100*10^3; // (ohm)
B=100; // beta value
I_B=(V_BB-V_BE)/R_B;
disp(I_B,"Base current (A)")
I_C=B*I_B;
disp(I_C,"Collector current (A)")
V_C=V_CC-I_C*R_C;
disp(V_C,"Collector voltage (V)")
V_B=V_BE ; // V_B=V_BE
disp(V_B,"Base voltage (V)")
I_E=(B+1)*I_B;
disp(I_E,"Emitter current (A)")