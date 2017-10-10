clc
rk = 16 // Compression ratio
T1 = 15 // Air inlet temperature in degree Celsius
P1 = 0.1 // Air inlet pressure in MPa
T3 = 1480 // Highest temperature in cycle in degree Celsius
g = 1.4 // Heat capacity ratio
R = 0.287 // Gas constant
T2 = (T1+273)*(rk^(g-1)) // Temperature after compression
rc =  (T3+273)/T2 // cut off ratio
cp = 1.005 // Constant pressure heat constant
cv = 0.718 // Constant volume heat constant
Q1 = cp*(T3+273-T2) // Heat addition
T4 = (T3+273)*((rc/rk)^(g-1)) // Temperature after heat addition
Q2 = cv*(T4-T1-273) // Heat rejection
n = 1-(Q2/Q1) // cycle efficiency
n_ = 1-((1/g))*(1/rk^(g-1))*((rc^(g-1))/(rc-1)) // cycle efficiency from another formula
Wnet = Q1*n // Net work 
v1 = (R*(T1+273))/(P1*1e3) // Volume before compression
v2 = v1/rk // Volume after compression
Pm = Wnet/(v1-v2) // Mean pressure
printf("\n Example 13.3\n")
printf("\n Cut-off ratio is %f ",rc)
printf("\n Heat supplied per kg of air is %f kJ/kg",Q1)
printf("\n Cycle efficiency is %f percent",n*100)
printf("\n Mean effective pressure is %f kPa",Pm)
//The answers vary due to round off error

