//Example number 9.13, Page number 208

clc;clear;
close;

//Variable declaration
sigmae=2.2*10**-4;       //conductivity(ohm/m)
mew_e=125*10**-3;       //electron mobility(m**2/Vs)
e=1.602*10**-19;     //charge(c)
//Calculation
ne=sigmae/(e*mew_e);     //concentration(per m**3)
//Result
printf("concentration is %.1e per m^3",ne)
