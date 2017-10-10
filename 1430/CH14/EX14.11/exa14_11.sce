// Example 14.11
// A Cascode Amplifier
R_s=2000;
R_L=4000;
T_a=[-10^-3 ,-20;-2*10^-6,-0.02]; // Given H parameters for Transistor a
T_b=T_a; // Given H parameters for Transistor b
T_ab=T_a*T_b;
Z_i=(T_ab(1)*R_L+T_ab(3))/(T_ab(2)*R_L+T_ab(4));
H_i=-1/(T_ab(2)*R_L+T_ab(4));
A_i= (-R_s*H_i)/(R_s+Z_i);
disp(A_i,"Gain of Cascade amplifier=")
