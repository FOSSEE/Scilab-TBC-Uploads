// Example 12.4 To design tuned amplifier

cfg=-10; // Center frequency gain (V/V)
g_m=0.005; // (A/V)
r_o=10000; // (ohm)
f_o=1*10^6; // (Hz)
B=2*%pi*10^4; // Bandwidth
R=-cfg/g_m;
R_L=R*r_o/(r_o-R);
disp(R_L,"R_L (ohm)")
C=1/(R*B)
disp(C,"C (F)")
w_o=2*%pi*f_o;
L=1/(w_o^2*C);
disp(L,"L (H)")