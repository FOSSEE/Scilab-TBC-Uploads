
clc
//initialization of variables
slope = 0.93/3600 // sec^-1
q0 = 300 // 300 times y0 
E = 0.4 // void fraction
d = 310*10^-4 //cm
v = 1/60 //cm/sec
Nu = 0.01 //cm^2/sec
D = 5*10^-6 //cm^2/sec
//Calculations
ka1 = slope*q0*(1-E)//sec^-1
k = (D/d)*1.17*((d*v/Nu)^0.58)*((Nu/D)^0.33)// cm/sec
a = (6/d)*(1-E)//cm^2/cm^3
ka2 = k*a//sec^-1
//Results
printf("The rate constant is %.3f sec^-1",ka1)
printf("\nThe rate constant of literature is %.3f sec^-1",ka2)
