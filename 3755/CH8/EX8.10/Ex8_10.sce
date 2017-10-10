clear
//
//
//

//Variable declaration
rho=9*10^-3;       //resistivity(ohm m)
RH=3.6*10^-4;      //hall coefficient(m^3/C)
e=1.6*10^-19;         //charge of electron

//Calculation
sigma=1/rho;
rho=1/RH;   
n=rho/e;        //density of charge carrier(per m^3)
mew=sigma*RH;      //mobility(m^2/Vs)

//Result
printf("\n density of charge carrier is %0.5f *10^22 per m^3",n/10^22)
printf("\n mobility is %0.3f m^2/Vs",mew)
