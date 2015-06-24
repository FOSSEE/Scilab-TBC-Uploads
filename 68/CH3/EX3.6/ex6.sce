// Example 3.6 : Power supply ripple
V_S=10; // V_S=V_+
V_D=0.7; // (V)
R=10*10^3; // (ohm)
n=2;
V_T=25*10^-3; // (V)
V_s=1; // (V)
I_D=(V_S - V_D)/R;
r_D=n*V_T/I_D;
v_d=V_s*r_D/(R+r_D);
disp(v_d,"v_d(peak (V))")