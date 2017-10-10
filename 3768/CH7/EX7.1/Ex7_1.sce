//Example number 7.1, Page number 146

clc;clear;
close;

//Variable declaration
epsilonr=3.75;       //relative dielectric constant
T=27;    //temperature(C)
gama=1/3;     //internal field constant
rho=2050;     //density(kg/m**3)
Ma=32;        //atomic weight(amu)
Na=6.022*10**23;     //avagadro number
epsilon0=8.85*10**-12;    
//Calculation
x=(epsilonr-1)/(epsilonr+2);
alpha_e=x*Ma*3*epsilon0/(rho*Na);     //electronic polarisability(Fm**2)
//Result
printf("electronic polarisability is %.3e Fm^2",alpha_e)
//answer varies due to rounding off errors
