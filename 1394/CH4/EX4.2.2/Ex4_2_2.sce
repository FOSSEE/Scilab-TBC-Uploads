
clc
//initialization of variables
d = 10 //cm
s = 3 // km
v = 500 //cm/sec
nu = 0.15 // cm^2/sec
//Calculations
E = 0.5*d*v // cm^2/sec
c1 = 1000 // m/km
c2 = 1/100 // m/cm
z = sqrt(4*E*c1*c2*s/v)
percent = z*100/(s*c1)
//Results
printf(" The percent of pipe containing mixed gases is %.1f percent",percent)
