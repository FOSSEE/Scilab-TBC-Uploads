
clc
//Initialization of variables
R = 82 // atm-cm^3/gmol-K
T = 273 + 60 // Kelvin
pk = 1 // atm
a1 = 440 // sec^-1 (of gas)
a2 = 1.7 //sec^-1 (of liquid)
ck = 1.5/((0.47*(76.1))+(0.53*(158.7)))
x = 0.2
Vs = 10 // litres
GA = 59 // gmol/sec
m = 1.41
//Calculations
k = (R*T)/(pk*a1) + (m/(ck*a2))
Kya = (1/k)*1000 // gmol/l-sec
Murphree = 1 - exp(-Kya*Vs/(GA))
//Results
printf("The murphree efficiency is %.2f",Murphree)
