clc
// Given that
r1 = 2.5 // Pressure ratio of compressor for first stage
r2 = 2.1 // Pressure ratio of compressor for second stage
m = 5 // Mass flow rate of air in kg/s 
t1 = 10 // Inlet temperature in degree centigrade
p1 = 1.013 // Inlet pressure in bar
td = 50 // Temperature drop in intercooler in degree centigreade
n_iso = .85 // Isentropic efficiency
cp = 1.005 // Heat capacity of air in kJ/kgK
x = 0.7 // Reduction in pressure ratio and intake volume 
gama = 1.4 // Ratio of heat capacities for air
printf("\n Example 19.16\n")
T1 = t1+273
T2s = T1*((r1)^((gama-1)/gama))
T2 = T1 + (T2s-T1)/n_iso
T3 = T2 - td
T4s = T3*((r2)^((gama-1)/gama))
T4 = T3 + (T4s-T3)/n_iso
P = m*cp*((T2-T1)+(T4-T3))
printf("\n Actual temperature at the end of first stage = %f K,\n Actual temperature at the end of second stage = %f K,\n The total compressor power = %f kW",T2,T4,P)
// The answers given in the book vary due to round off error
 
