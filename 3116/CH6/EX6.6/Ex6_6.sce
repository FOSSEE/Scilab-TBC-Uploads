

clc
//given that
P_m = 2.3e-14 // permissibility coefficient of CO2 through PET
P_1 = 400// Pressure inside bottle in KPa
P_2 = 0.4 // Pressure outside bottle in KPa
A = 500 // Surface area of bottle in cm^2
x = 0.05 // wall thickness of bottle in cm
V = 750 // volume in cm^3
printf("\Example 6.6\n")
J = -P_m*(P_2-P_1)*1e3/x // calculation of diffusion flux
printf("\n Part A:")
printf("\n Diffusion flux is %0.1e cm^3 STP/(cm^2-s)",J)
printf("\n\n Part B:")
V_co2 = J*A 
t = V/V_co2 // calculation of self life
printf("\n Self life for bottle of pop is %d days (or about %d months).", t/(60*60*24),t/(60*60*24*30))
// Answer in book is 97 days. It is because of considering different number of significant figure
