// Example 14.2 To determine quiescent current and power
// Consider Class AB Amplifier
V_CC=15; // (V)
R_L=100; // (ohm)
v_O=-10:10:10; // Amplitude of sinusoidal output voltage (V)
I_S=10^-13; // (A)
V_T=25*10^-3; // (V)
B=50; // Beta value
i_Lmax=10/(0.1*10^3); // Maximum current through Q_N (A)
// Implies max base curent  in Q_N is approximately 2mA
I_BIAS=3*10^-3; // We select I_BIAS=3mA in order to maintain a minimum of 1mA through the diodes
I_Q=9*10^-3; // The area ratio of 3 yeilds quiescent current of 9mA
P_DQ=2*V_CC*I_Q;
disp(P_DQ,"Quiescent power dissipation (W)")
//For v_O=0V base current of Q_N is 9/51=0.18 mA
// Leaves a current of 3-0.18=2.83mA to flow through the diodes
I_S= (10^-13)/3; // Diodes have I_S = (1*10^-13)/3 
V_BB=2*V_T*log((2.83*10^-3)/I_S);
disp(V_BB,"V_BB (V) for v_O = 0V")
// For v_O=+10V, current through the diodes will decrease to 1mA
V_BB=2*V_T*log((1*10^-3)/I_S);
disp(V_BB,"V_BB (V) for v_O = +10V")
// For v_O=-10V , Q_N will conduct very small current thus base current is negligible
// All of the I_BIAS(3mA) flows through the diodes
V_BB=2*V_T*log((3*10^-3)/I_S);
disp(V_BB,"V_BB (V) for v_O = -10V")