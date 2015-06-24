// Example 5.11 :Analyse the circuit to find node voltages and branch currents
V_CC=15; // (V)
R_C1=5000; // (ohm)
R_B1=100*10^3; // (ohm)
R_B2=50*10^3; // (ohm)
R_E=3000; // (ohm)
V_BE=0.7; // (V)
R_E2=2000; // (ohm)
R_C2=2700; // (ohm)
V_EB=0.7; // (V)
B=100; // beta value
V_BB=V_CC*R_B2/(R_B1+R_B2);
R_BB=R_B1*R_B2/(R_B1+R_B2);
I_E1=(V_BB-V_BE)/(R_E +(R_BB/(B+1)))
disp(I_E1,"I_E1 (A)")
I_B1=I_E1/(B+1)
disp(I_B1,"I_B1 (A)")
V_B1=V_BE+I_E*R_E;
disp(V_B1,"V_B1 (V)")
a=B/(B+1); // alpha value
// beta and alpha values are same for the two transistors
I_C1=a*I_E
disp(I_C1,"IC1 (A)")
V_C1=V_CC-I_C1*R_C1;
disp(V_C1,"V_C1 (V))")
V_E2=V_C1+V_EB;
disp(V_E2,"V_E2(V)")
I_E2=(V_CC-V_E2)/R_E2;
disp(I_E2,"I_E2 (A)")
I_C2=a*I_E2;
disp(I_C2,"I_C2 (A)")
V_C2=I_C2*R_C2;
disp(V_C2,"V_C2 (V)")
I_B2=I_E2/(B+1);
disp(I_B2,"I_B2 (A)")