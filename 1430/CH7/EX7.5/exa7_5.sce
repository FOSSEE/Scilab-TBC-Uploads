// Example 7.5
// Designing Power-Factor Correction
// From figure 7.10(a)
V_rms=500; // Volts
f=60; // Radian Frequency (rad/s)
omega=377; // (rad/s)
P_1=48*10^3; // Watts
pf_1=0.60; // Lagging
P_2=24*10^3;// Watts
pf_2=0.96; // Leading
// For Load 1
S_1= P_1/pf_1; // apparent power
Q_1=sqrt(S_1^2-P_1^2); // Reactive power
I_1= S_1/V_rms; // RMS current drawn by load 1
// For Load 2
S_2=P_2/pf_2; // apparent power
Q_2=-sqrt(S_2^2-P_2^2); // Reactive power
I_2= S_2/V_rms; // RMS current drawn by load 2
P_12= P_1+P_2;
Q_12=Q_1+Q_2;
S_12= sqrt(P_12^2+Q_12^2);
I_12=S_12/V_rms;
pf_12=P_12/abs(S_12);
// With reference to table 7.3
P_C=0;
Q_C=-Q_12;
V_C=V_rms;
C=-Q_C/(omega*abs(V_C)^2);
disp(C,"Value of Capacitance for unity power factor(in Farad)=")
