// Example1.4 : Bipolar junction transistor

// 1,4a
// using voltage divider rule the fraction of input signal v_be=v_s*r_pi/(r_pi+R_s)
// output voltage v_o=-g_mv_be(R_L||r_o)
r_pi=2.5*10^3; // (ohm)
R_s=5*10^3; // (ohm)
R_L=5*10^3 // (ohm)
g_m=40*10^-3; // (mho)
r_o=100*10^3; // (ohm)
gain=-(r_pi*g_m*(R_L*r_o/(R_L+r_o)))/(r_pi+R_s); // gain=v_o/v_s
disp(gain,"The voltage gain (V/V) =")
gain_negl_r_o=-r_pi*g_m*R_L/(r_pi+R_s);
disp(gain_negl_r_o,"Gain neglecting the effect of r_o (V/V) =")

// 1.4b
// Bi_b=g_m*v_be
// B is short circuit gain
B=g_m*r_pi;
disp(B,"The short circuit gain (A/A) =")