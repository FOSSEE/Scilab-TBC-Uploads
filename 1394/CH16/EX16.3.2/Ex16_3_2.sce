
clc
//initialization of variables
K = 0.0087 // overall m.t.c in cm/sec
D = 0.98*10^-5 // cm^2/sec
L = 0.3 // cm
v = 70 // cm/sec
nu = 0.01 //cm^2/sec
//Calculations
k1 = 0.646*(D/L)*((L*v/nu)^(0.5))*((nu/D)^(1/3))// cm/sec
k2 = (1/((1/K)-(1/k1)))/// cm/sec
//Results
printf("The rate constant for the reaction is %.2f cm/sec",k2)
