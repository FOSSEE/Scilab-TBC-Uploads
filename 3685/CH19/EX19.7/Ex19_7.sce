clc
// Given that
p1 = 1 // Pressure in bar
t1 = 27 // Temperature in degree centigrade
n = 1.3 // Index of the compression process
p3 = 9// Pressure in bar
R = 0.287
printf("\n Example 19.7\n")
T1 = t1+273
p2 = sqrt(p1*p3)
Wc = ((2*n*R*T1)/(n-1))*(((p2/p1)^((n-1)/n))-1)
T2 = T1*((p2/p1)^((n-1)/n))
H = 1.005*(T2-T1)
printf("\n Minimum work done is %f kJ/kg,\n Heat rejected to intercooler is %f kJ/kg",Wc,H)
//The answers vary due to round off error

