//Example number 9.8, Page number 206

clc;clear;
close;

//Variable declaration
sigma=2.12;     //conductivity(ohm-1 m-1)
T=300;      //temperature(K)
e=1.6*10**-19;     //charge(c)
mew_e=0.36;        //electron mobility(m**2/Vs)
mew_h=0.7;       //hole mobility(m**2/Vs)
C=4.83*10**21;
KB=1.38*10**-23;   //boltzmann constant
//Calculation
ni=sigma/(e*(mew_e+mew_h));     //carrier density(per m**3)
x=C*T**(3/2)/ni;
Eg=2*KB*T*log(x)/e;      //energy gap(eV)
//Result
printf("carrier density is %.2e per m^3",ni)
printf("\n energy gap is %.2f eV",Eg)
//answer in the book is wrong
