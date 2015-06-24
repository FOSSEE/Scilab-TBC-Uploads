
clc
//Initialization of variables
kb = 1.38*10^-16//g-cm^2-sec^2-K
T = 310 // kelvin
k = 30 // which is a/b
D = 2.0*10^-7 // cm^2/sec
Mu = 0.00695 // g/cm-sec
//Calculations
a = ((kb*T/(6*%pi*Mu*D))*((log(k + ((k^2-1)^(0.5))))/((1-(1/k^2))^0.5)))*10^7 // nm
b = a/k // nm
//Results
printf("The results of a and b are %.f nm and %.1f nm",a,b)

