//Problem 40.06: A single-core concentric cable is to be manufactured for a 60 kV, 50 Hz transmission system. The dielectric used is paper which has a maximum permissible safe dielectric stress of 10 MV/m rms and a relative permittivity of 3.5. Calculate (a) the core and inner sheath radii for the most economical cable, (b) the capacitance per metre length, and (c) the charging current per kilometre run.

//initializing the variables:
e0 = 8.85E-12; 
er = 3.5;
V = 60000; // in Volts
f = 50; // in Hz
Em = 10E6; // in V/m


//calculation: 
//core radius, a
a = V/Em
//internal sheath radius,
b = a*%e^1
//capacitance
C = 2*%pi*e0*er/(log(b/a))
//Charging current
I = V*2*%pi*f*C
//charging current per kilometre
Ipkm = I*1000

printf("\n\n Result \n\n")
printf("\n core radius is %.2E m and internal sheath radius %.2E m",a,b)
printf("\n capacitance is %.2E F/m",C)
printf("\n the charging current per kilometre %.2f A",Ipkm)