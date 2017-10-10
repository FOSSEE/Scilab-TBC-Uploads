clc
nc = 0.87 // Compressor efficiency 
nt = 0.9 // Turbine efficiency
T1 = 311 // Compressor inlet temperature in K
rp = 8 // compressor pressure ratio
P1 = 1 // Initial pressure in atm
T3 = 1367 // Turbine inlet temperature
P2 = P1*rp // Final pressure 
P3 = 0.95*P2 // Actual pressure after compression
P4 = 1 // Atmospheric pressure
g = 1.4 // Heat capacity ratio
cv = 0.718 // Constant volume heat capacity
cp = 1.005 // Constant pressure heat capacity
R = 0.287 // Gas constant
// With no cooling
T2s = T1*((P2/P1)^((g-1)/g)) // Ideal temperature after compression
T2 = T1 + (T2s-T1)/0.87 // Actual temperature after compression
T4s = T3*(P4/P3)^((g-1)/g) // Ideal temperature after expansion
n = (((T3-T4s)*nt)-((T2s-T1)/nc))/(T3-T2) // cycle efficiency
// With cooling
n_cycle = n-0.05
x = 0.13 // Fluid quality
r = x/(x+1) // 
printf("\n Example 13.8\n")
printf("\n Percentage of air that may be taken from the compressor is %f percent",r*100)
//The answers vary due to round off error

