clc
an = 20.183 // molecular weight of neon
Pc = 2.73 // Critical pressure
Tc = 44.5 // Critical tmperature in Kelvin
Vc = 0.0416 // volume of gas in m^3
Pr = 2 // Reduced Pressure
Tr = 1.3 // Reduced temperature
Z = 0.7 // Compressibility factor
P = Pr*Pc // Corresponding Pressure 
T = Tr*Tc // Corresponding temperature
R = 8.314 // Gas constant
v = (Z*R*T)/(P*an) // Corresponding volume
vr = (v*an)/(Vc*1e3)  // reduced volume

printf("\n Example 10.10")
printf("\n Specific volume is %f *10^-3 m3/kg",v)
printf("\n Specific temperature is %f K",T)
printf("\n Specific pressure is %f MPa",P)
printf("\n Reduced volume is %f m3/kg",vr)
//The answers vary due to round off error
