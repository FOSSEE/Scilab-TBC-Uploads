

clc
//Initialization of variables
d = 400*10^-4 // cm
D = 10^-5 // cm^2/sec
v = 1 // cm/sec
l = 30 // cm
nu = 0.01 // cm^2/sec
//Calculations 
k1 = (D/d)*1.62*(((d^2)*v/D*l)^(1/3))// Mass transfer co efficient inside the hollow fibers in cm/sec
k2 = (D/d)*0.8*((d*v/nu)^0.47)*((nu/D)^(1/3))//Mass transfer co efficient outside the hollow fibers in cm/sec
//Results
printf("Mass transfer co efficient inside the hollow fibers %.2e cm/sec",k1)
printf("\nMass transfer co efficient outside the hollow fibers %.1e cm/sec",k2)
