
clc
//intialization of variables
d = 100*10^-4 // cm
v = 10^-3// cm/sec
nu = 0.2 // cm^2/sec
DS = 0.3 // cm^2/sec
DG = 3*10^-7 // cm^2/sec
H = 4.3*10^-4 // at 60 degree centigrade
//Calculations
kG = (2+(0.6*((d*v/nu)^0.5)*((nu/DS)^(1/3))))*DS/d// cm/sec
k = kG*H 
t = 30*DG/k^2
//Results
printf("The mass transfer coefficient is %.5f cm/sec",k)
printf("\nTHe time needed to dry the particle is %.6f sec",t)
//Answer wrong in textbook starting from kG
