// Example 9.3 : To determine input offset voltage
r_e=2.63*10^3; // (ohm)
R=1000; // (ohm)
I=9.5*10^-6; // (A)
deltaRbyR=0.02; // 2% mismatch between R_1 and R_2
G_m1=10^-3/5.26; // (A/V)
deltaI=deltaRbyR/(1+deltaRbyR + r_e/R); // Change of deltaI in I_E (A)
V_OS=deltaI/G_m1;
disp(V_OS,"Offset voltage (V)")