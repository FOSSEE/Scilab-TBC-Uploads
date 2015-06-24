
clc
//initialization of variables
m = 20/(6*10^23)//wt of each molecule
kb = 1.38*10^-16 // g-cm^2/sec-K
T = 298 // Kelvin
dou = 0.04*10^-7 // cm
//Calculations
v = sqrt(kb*T*2/m) //cm/sec
D = (dou*v/6)*10^5 // in x*10^-5 cm^2/sec
//Results
printf("The value of Diffusion co efficient is %.f x10^-5 cm^2/sec",D)
