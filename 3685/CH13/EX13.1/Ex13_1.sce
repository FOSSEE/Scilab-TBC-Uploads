clc
T1 = 35 // Air inlet temperature in degree Celsius
P1 = 0.1 // Air inlet pressure in MPa
Q1 = 2100 // Heat supply in kJ/kg
R = 0.287 // gas constant
rk = 8 // Compression ratio
g = 1.4 // Heat capacity ratio
n_cycle = 1-(1/rk^(g-1)) // cycle efficiency 
v1 = (R*(T1+273))/(P1*1e3) // Initial volume
v2 = v1/8 // Volume after compression
T2 = (T1+273)*(v1/v2)^(g-1) // Temperature after compression
cv = 0.718 // Constant volume heat capacity in kJ/kg
T3 = Q1/cv + T2 // Temperature at after heat addition
P21 = (v1/v2)^g // Pressure ratio
P2 = P21*P1 // Pressure after compression
P3 = P2*(T3/T2) // Pressure after heat addition
Wnet = Q1*n_cycle // Net work output
Pm = Wnet/(v1-v2) // Mean pressure
printf("\n Example 13.1\n")
printf("\n Cycle efficiency is %f percent",n_cycle*100)
printf("\n Maximum temperature in the cycle is %d K",T3)
printf("\n Maximum pressure in the cycle is %f MPa",P3)
printf("\n Mean effective pressure is %f MPa",Pm/1e3)
//The answers vary due to round off error

