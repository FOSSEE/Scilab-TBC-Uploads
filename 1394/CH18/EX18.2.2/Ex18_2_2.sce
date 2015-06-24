
clc
//initialization of variables
P = 1*10^-4 // membrane permeability in cm^2/sec
l = 2.3*10^-4 // membrane thickness in cm
d = 320*10^-4 // fiber dia in cm
E = 0.5 // void fraction
c0 = 1// initial concentration
c = 0.1// final concentration
//Calculations
a = 4*(1-E)/d // surface area per module volume in cm^2/cm^3
t = (log(c0/c))*(l/P)/a // t = z/v in seconds , time gas spends in the module in sec
//Results
printf("The gas spends %.2f sec in the module",t)
