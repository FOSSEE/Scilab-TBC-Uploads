//Example number 9.2, Page number 203

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;     //charge(c)
ni=1.5*10**16;    //particle density(per m**3)
mew_e=0.13;        //electron mobility(m**2/Vs)
mew_h=0.048;       //hole mobility(m**2/Vs)
ND=10**23;     //density(per m**3)
//Calculation
sigma_i=ni*e*(mew_e+mew_h);          //conductivity(s)
sigma=ND*mew_e*e;       //conductivity(s)
P=ni**2/ND;            //equilibrium hole concentration(per m**3)
//Result
printf("conductivity is %.2e s",sigma_i)
printf("\n conductivity is %.3e s",sigma)
printf("\n equilibrium hole concentration is %.2e per m^3",P)
//answer in the book varies due to rounding off errors
