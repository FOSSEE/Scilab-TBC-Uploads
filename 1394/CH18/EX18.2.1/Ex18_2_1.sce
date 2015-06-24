
clc
//initialization of variables
p1 = 10^-10 // cm^3(stp)cm/cm^2-sec-cm-Hg
c = 1/(22.4*10^3) // mol at stp /cc
P = p1*c // for proper units
R = 6240 // cmHg cm^3 //mol-K (gas constant)
T = 298 // Kelvin
//Calculations
DH = P*R*T*10^9 // Permeability in x*10^-9 cm^2/sec
//Results
printf("The permeability is %.1f x10^-9 cm^2/sec",DH)
