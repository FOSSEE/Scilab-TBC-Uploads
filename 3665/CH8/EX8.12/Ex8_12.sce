clc//
//
//

//Variable declaration
ni=1.5*10^16;     //carrier density(per m^3)
mew_e=0.13;     //electron mobility(m^2/Vs)
mew_h=0.05;     //hole mobility(m^2/Vs)
e=1.6*10^-19;   
d=2.33*10^3;    //density(kg/m^3)
n=28.1;
na=6.02*10^26;     //number of atoms

//Calculation
sigma=ni*e*(mew_e+mew_h);     //conductivity(ohm-1 m-1)
Nd=d*na/(n*10^8);
p=ni^2/Nd;    
sigma_ex1=Nd*e*mew_e;     //conductivity(ohm-1 m-1)
n=p;
Na=Nd;
sigma_ex2=Na*e*mew_h;     //conductivity(ohm-1 m-1)

//Result
printf("\n conductivity is %0.3f *10^-3 ohm-1 m-1",sigma*10^3)
printf("\n conductivity is %0.2f ohm-1 m-1",sigma_ex1)
printf("\n conductivity is %0.2f ohm-1 m-1",sigma_ex2)
