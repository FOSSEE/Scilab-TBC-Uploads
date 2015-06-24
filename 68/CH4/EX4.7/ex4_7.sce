// Example 4.7: To determine drain currents and output voltage
K_n =1*10^-3; // K_n=k_n*W_n/L_n (A/V^2)
K_p = 1*10^-3; // K_p=k_p*W_p/L_p (A/V^2)
V_tn= 1; // (V)
V_tp= -1; // (V)
V_I=-2.5:2.5:2.5; // (V)
V_DD=2.5; // (V)
R=10;// (kilo ohm)
// For V_I=0
I_DP=(K_p*(V_DD-V_tn)^2)/2;
I_DN=I_DP;
disp(I_DP,I_DN,"I_DP (A) and I_DN (A) for V_I=0V")
disp(0,"V_O for V_I =0V")
// For V_I=2.5V
// I_DN=K_N(V_GS-V_tn)V_DS
// I_DN=v_O/R
// Solving the two equations we get
I_DN=0.244*10^-3; // (V)
V_O=-2.44; // (V)
disp(I_DN,V_O,"V_O and I_DN for V_I=2.5V")
// For V_I=-2.5V Q_N is cut off
I_DP=2.44*10^-3; // (A)
V_O=2.44; // (V)
disp(0,I_DP,V_O,"V_O(V), I_DP (A) and I_DN (A) for V_I=-2.5V")