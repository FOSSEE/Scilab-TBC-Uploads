//Problem 40.05: A concentric cable has a core diameter of 32 mm and an inner sheath diameter of 80 mm. The core potential is 40 kV and the relative permittivity of the dielectric is 3.5. Determine (a) the capacitance per kilometre length of the cable, (b) the dielectric stress at a radius of 30 mm, and (c) the maximum and minimum values of dielectric stress.

//initializing the variables:
e0 = 8.85E-12; 
er = 3.5;
di = 0.08; // in m
d0 = 0.032; // in m
r = 0.03; // in m
V = 40000; // in Volts

//calculation: 
//capacitance C
C = 2*%pi*e0*er/(log(di/d0))
//dielectric stress at radius r,
E = V/(r*log(di/d0))
//maximum dielectric stress,
Emax = V/((d0/2)*(log((di/d0))))
//minimum dielectric stress,
Emin = V/((di/2)*(log((di/d0))))

printf("\n\n Result \n\n")
printf("\n capacitance is %.2E F/km",C*1E3)
printf("\n dielectric stress at radius r is %.2E V/m",E)
printf("\n maximum dielectric stress, is %.2E V/m minimum dielectric stress %.2E V/m",Emax, Emin)