//Chapter 4, Exmaple 10, page 144
//Claculate (a)Raether's criterion (b)Meek and Lobe's criterion
clc
clear
//(a)Raether's criterion
// as assumed by Raether and based equation 3.3, 3.50, 4.22 and 4.23
d = 0.001 // m
alpha = 10792.2 // m^-1
p = 101.3 //kPa^-1
ap = 106.54 // alpha/p Unit: m^-1*kPa^-1
T = 11253.7 // m^-1*kPa^-1
B = 273840 // V/m*kPa
Ep = 58764.81 // E/p Unit:V/m*kPa

ad = 17.7 + log(d)
E = Ep*p
Vs = E*d*10^-3 //Voltage breakdown
printf("\n E = %e V/m",E)
printf("\n Voltage breakdown = %f kV",Vs)

//(b)Meek and Loeb's criterion
//Using equation 4.11 and based on 4.24 & 4,25 
//+ we get Er = 468*10^4 V/m
Er = 468*10^4 // V/m
Vs2 = Er*0.001*10^-3
printf("\n Voltage breakdown = %f kV",Vs2)

// Answers may vary due to round of error
