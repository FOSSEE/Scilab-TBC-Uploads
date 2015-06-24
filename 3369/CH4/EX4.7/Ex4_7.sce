//Chapter 4, Exmaple 7, page 142
//Claculate secondary coefficient
clc
clear
//Using equation 3.15
E = 9*10**3/0.002
T = 11253.7 // m^-7*kPa^-1
B = 273840 // V/mkPa
p = 101.3 // kPa or 1 atm
d = 0.002 // m
alpha = p*T*exp(-B*p/E)
Y = 1/(exp(alpha*d)-1)
printf("\n E = %e V/m",E)
printf("\n Alpha = %f m^-1",alpha)
printf("\n Total secondary coefficient of ionization = %f ",Y)

//Answer may vary due to round off error
