clear
// Variable declaration
Cc=700// The cooling capacity in kW
P_c=170// The compressor power in kW
c_b=0.0012// Concentration of solids in bleed-off (kg/kg)
c_m=0.00056// Concentration of solids in make-up water in kg/kg

// Calculation
E_tc=Cc+P_c// Cooling tower capacity in kW
h_fg=2420// Latent heat of water vapour in kJ/kg
w_e=E_tc*10**3/h_fg// Rate of evaporation in g/s
w_m=(w_e*(c_b))/(c_b-c_m)// Rate of make up in kg/s
w_bo=w_m-w_e// Rate of bleed off in kg/s
printf("\n \nRate of make up=%0.2f kg/s \nRate of bleed off=%0.2f kg/s",w_m/1000,w_bo/1000)

