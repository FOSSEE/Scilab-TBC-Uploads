// Exa 2.2 Determining the infinitesimal stage efficiencies
p1=1.02; // Initial Pressure in bar
T1=300;  // Initial Temperature in K

// part(a)
T2=315;  // Final Temperature in K
gamma=1.4; // Specific Heat Ratio
g=9.81; // Gravitational acceleration in m/s^2
sg=1; // Specific Gravity of air
delp=(1500)*(0.001)*(g)*(sg); // Total Pressure Loss Across the Diffuser in kPa
p2=p1+(0.01*delp);
pr=p2/p1; // Pressure Ratio
T2s=T1*(pr^((gamma-1)/gamma));
n_c=(T2s-T1)/(T2-T1); // Efficiency in %
n_p=((gamma-1)/gamma)*((log(p2/p1))/(log(T2/T1)));
disp ("%",n_c*100,"(a)Efficiency of the compressor is")
disp ("%",n_p*100,"and infinitesimal stage Efficiency or polytropic efficiency of the compressor is")

// part(b) Determining the infinitesimal stage efficiency

p2_b=2.5;  // Final pressure in bar
n_b=0.75; // Efficiency
pr_b=p2_b/p1; // Pressure Ratio
T2s_b=T1*(pr_b^((gamma-1)/gamma));
T2_b=T1+((T2s_b-T1)/n_b);
n_p_b=((gamma-1)/gamma)*((log(p2_b/p1))/(log(T2_b/T1)));
disp ("%" ,n_p_b*100,"(b)infinitesimal stage Efficiency or polytropic efficiency of the compressor is")
