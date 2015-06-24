
clc
//Initialization of variables
sigma1 = 4.23 // angstroms
sigma2 = 4.16 //Angstroms
sigma12 = (sigma1+sigma2)/2 // angstroms
T = 573 // Kelvin
M1 = 28
M2 = 26
p = 1 //atm
Omega = 0.99
Deff = 0.17 //cm^2/sec
//calculations
D = ((1.86*10^-3)*((T)^1.5)*(((1/M1)+(1/M2))^0.5))/((p)*((sigma12)^2)*Omega)//cm^2/sec
Tou = D/Deff
//Results
printf("The tortuosity is %.f",Tou)

