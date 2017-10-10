clc;
Tmin=5+273; // Minimum operating temperature in kelvin
Tmax=839+273; // Maximum operating temperature in kelvin 
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio

eff_carnot=1-Tmin/Tmax; // Efficiency of the carnot cycle
c=1/(1-eff_carnot);
p2_p1=c^(r/(r-1)); // Pressure ratio
disp (p2_p1,"(i).Pressure ratio at which efficiency equals Carnot cycle efficiency = ");
t=Tmax/Tmin; // Temperature ratio
// Pressure ratio for maximum work is obtained when
c=sqrt (t); 
p2_p1=c^(r/(r-1)); // Pressure ratio
eff=1-1/c;// Efficiency at maximum work output
disp (p2_p1,"(ii).Pressure ratio at which maximum work is obtained = ");
disp ("%",eff*100,"(iii).Efficiency at maximum work output = ");
