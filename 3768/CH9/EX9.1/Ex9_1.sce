//Example number 9.1, Page number 202

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;     //charge(c)
ni=2.4*10**19;    //particle density(per m**3)
mew_e=0.39;        //electron mobility(m**2/Vs)
mew_h=0.19;       //hole mobility(m**2/Vs)
//Calculation
rho=1/(ni*e*(mew_e+mew_h));       //resistivity(ohm m)
//Result
printf("resistivity is %.5f ohm-m",rho)
