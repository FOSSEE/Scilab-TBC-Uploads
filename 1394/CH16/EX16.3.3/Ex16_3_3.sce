

clc
//initialization of variables
D =2*10^-6 // cm^2/sec
nu = 0.036 // cm^2/sec 
d1 = 1.59 // cm
d2 = 1 // cm
deltap = 1*10^-5 // g/cc ( change in density)
p = 1 // g/cc
Re = 11200 // Reynolds number
g = 980 // cm/sec^2 
dis = 5.37*10^-9 // g/cm^2-sec // Dissolution rate
sol = 1.48*10^-3 // g/cc
//Calculations
k11 = 0.62*(D/d1)*(Re^(0.5))*((nu/D)^(1/3))// cm/sec
K1 = dis/sol// the overall mass transfer co efficient in cm/sec
k2 = (1/((1/K1)-(1/k11)))/// cm/sec /// the rate constant in cm/sec
k12 = (D/d2)*(2+(((0.6*((d2^3)*(deltap)*g/(p*nu^2)))^0.25)*((nu/D)^(1/3)))) // cm/sec
K2 = 1/((1/k12)+(1/k2))// cm/sec (the overall mtc)
//Results
printf("the rate of surface reaction is %.7f cm/sec",k2)
printf("\nThe dissolution rate for 1 cm gallstone is %.7f cm/sec",K2)
