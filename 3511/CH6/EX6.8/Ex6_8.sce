clc;
WR=0.3; // Work ratio
rp=12; // Pressure ratio 
t=4; // Temperature ratio
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

c=rp^((r-1)/r);
eff_C_T=1/((1-WR)*t/c);
tmin=c/eff_C_T;
eff=1-1/c;

disp (tmin,"Minimum Temperature ratio = ");
disp ("%",eff*100,"Efficiency = ");
