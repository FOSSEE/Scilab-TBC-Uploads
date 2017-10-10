//Example 10.11
// Scaling Calculations
C=25*10^-9;
R=2000;
L=40*10^-3;
s=%s;
Z=s*L+1/(s*C+1/R);
// H=I_L/V_s =1/Z ; // Required Network function
H=1/Z;
// since resistance is affected only by the magnitude of scale factor k_m is choosen such that R_cap will be a small integer value
k_m=0.005;
R_cap=0.005*(2000);// Scaled Resistance
// L_cap=(k_m/k_f)*L , this equation is suggesting to choose k_f= k_m*L
k_f=k_m*L;
L_cap=(k_m*L)/k_f; // Scaled inductance
C_cap=C/(k_m*k_f); // Scaled Capacitance
// Network function for the scaled network calculated on the same base as above
s_c=poly(0,'s_c')
num=(s_c+4);
den=(s_c^2+4*s_c+40);
H_cap=num/den;
K_cap=1;
z_cap=roots(num);
p_cap=roots(den);
//hence poles and zeros for original network function will be
z_1=z_cap/k_f;
p_1=p_cap/k_f;
// Gain factor is given by 
K=k_m/k_f;
disp(K,"Gain for original tranfer function=")
disp(z_1,"Zeros for original transfer function=")
disp(p_1,"Poles for original transfer function=")
