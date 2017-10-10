clc
m = 1.5 // Mass of gas in kg
P1 = 5.6 // Initial pressure of gas in MPa
V1 = 0.06 // Initial volume of gas in m^3
T2_ = 240 // Final temperature of gas in degree Celsius
a = 0.946 // Constant
b = 0.662 // Constant
k = 1e-4 // Constant
// Part (b)
R = a-b // constant
T2 = T2_+273 // Final temperature of gas in KK
T1 = (P1*1e03*V1)/(m*R) // Initial temperature
W12 = -integrate('m*(b+k*T)','T',T1,T2) // Work done

printf("\n Example 10.3")
printf("\n The work done in the expansion is %d kJ",W12)
//The answers vary due to round off error

