// Example 8.4
// Impedance Matching with a Transformer
omega=10^5;
R_L=500 ;
I_s_m=100*10^-3;
Z_s=(400*(-%i*200))/(400-%i*200); // from figure 8.10(a)
V_s_m=abs(Z_s)*I_s_m;
// From figure 8.10(b),load impedance referred to the primary
// Turn ratio
N=sqrt(500/80); // from condition of impedance matching
L=(160*N^2)/omega;// from condition of impedance matching
P_max=(V_s_m/sqrt(2))^2/(4*real(Z_s));
// Load reactance will be
X_L=%i*omega*L;
disp(X_L,"Load reactance for maximum power transfer(Ohms)=")
disp(N,"Turn ratio for maximum power transfer=")
disp(P_max,"Maximum power transferred(Watts)=")
