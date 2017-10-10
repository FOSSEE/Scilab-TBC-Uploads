
clc
T1 = 275 // Temperature of air at entrance to compressor in K 
T3 = 310 // Temperature of air at entrance to turbine in K 
P1 = 1  // Inlet pressure in bar
P2 = 4 // Outlet pressure in bar
nc = 0.8 // Compressor efficiency
T2s = T1*(P2/P1)^(.286) // Ideal temperature after compression
T2 = T1 + (T2s-T1)/nc // Actual temperature after compression
pr1 = 0.1 // Pressure loss in cooler in bar
pr2 = 0.08 //Pressure loss in condenser in bar 
P3 = P2-0.1 // Actual pressure in condenser
P4 = P1+0.08 // Actual pressure in evaporator
PR = P3/P4 // Pressure ratio
T4s = T3*(1/PR)^(0.286) // Ideal temperature after expansion
nt = 0.85 // turbine efficiency
T4 = T3-(T3-T4s)*nt // Actual temperature after expansion
COP = (T1-T4)/((T2-T3)-(T1-T4)) // Coefficient of performance 
printf("\n Example 14.11\n")
printf("\n Pressure ratio for the turbine is %f ",PR)
printf("\n COP is %f ",COP)
//The answers vary due to round off error
