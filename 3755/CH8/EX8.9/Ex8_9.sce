clear
//
//
//

//Variable declaration
rho=9*10^-3;       //resistivity(ohm m)
mew=0.03;     //mobility(m^2/Vs)

//Calculation
sigma=1/rho;
RH=mew/sigma;     //hall coefficient(m^3/C)

//Result
printf("\n hall coefficient is %0.3f *10^-4 m^3/C",RH*10^4)
