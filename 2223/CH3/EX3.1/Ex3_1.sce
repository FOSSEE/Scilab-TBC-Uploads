// scilab Code Exa 3.1 Constant Pressure Gas Turbine Plant

t1=50;  // Minimum Temperature in degree C
T1=t1+273; // in Kelvin
t3=950;  // Maximum Temperature in degree C
T3=t3+273; // in Kelvin
n_c=0.82; // Compressor Efficiency
n_t=0.87; // Turbine Efficiency
gamma=1.4; // Specific Heat Ratio
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
beeta=T3/T1;
alpha=beeta*n_c*n_t;
T_opt=sqrt(alpha); // For maximum power output, the temperature ratios in the turbine and compressor

// part(a) Determining pressure ratio of the turbine and compressor
pr=T_opt^(gamma/(gamma-1));
disp(pr,"(a)Pressure Ratio is")

// part(b) Determining maximum power output per unit flow rate
wp_max=cp*T1*((T_opt-1)^2)/n_c;
disp("kW/(kg/s)",wp_max,"(b)maximum power output per unit flow rate is")

// part(c) Determining thermal efficiency of the plant for maximum power output
n_th=(T_opt-1)^2/((beeta-1)*n_c-(T_opt-1));
disp("%",n_th*100,"(c)thermal efficiency of the plant for maximum power output is")
