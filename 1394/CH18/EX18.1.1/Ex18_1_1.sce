
clc
//initialization of variables
d = 240*10^-4 // cm
D = 2.1*10^-5 // cm^2/sec
v = 10 // cm/sec
Nu = 0.01 // cm^2/sec
E = 0.5
ka1 = 0.09 // sec^-1
//Calculations
k = 0.8*(D/d)*((d*v/Nu)^0.47)*((Nu/D)^0.33)
a = 4*(1-E)/d // cm^2/cm^3
ka2 = k*a
ratio = ka2/ka1
//results
printf("The rapidness is roughly %.f times that of sparger",ratio)

