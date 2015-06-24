
clc
//Initialzation of variables
kb = 1.38*10^-16 // g-cm^2/sec^2-K
T = 373 // K
T0 = 273 // K
sigma = 2.83*10^-8 // cm
p = 1.01*10^6// g/cm-sec^2
l = 0.6 // cm
d = 13*10^-7 // cm
m = 2/(6.023*10^23)// gm/sec
M1 = 2.01
M2 = 28.0
sigma1 = 2.92//cm
sigma2 = 3.68//cm
sigma12 = (sigma1+sigma2)/2
omega = 0.80
deltac1 = (1/(22.4*10^3))*(T0/T)
//Calculations
DKn = (d/3)*(sqrt((2*kb*T)/m))//cm^2/sec
flux1 = (DKn*deltac1/l)*10^5//in x*10^-5mol/cm^2-sec
D = (1.86*10^-3)*(T^(1.5))*(((1/M1)+(1/M2))^0.5)/(p*(sigma12^2)*omega)
flux2 = (D*deltac1/l)*10^11// in x*10^-11 mol/cm^2-sec
//Results
printf("The steady diffusion flux is %.2f x10^-5 mol/cm^2-sec",flux1)
printf("\nThe flux through 18.3 micrometre pore is %.1f x10^-11 cm^2/sec",flux2)// answer wrong in text book
