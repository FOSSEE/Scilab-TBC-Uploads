clc//
//
//

//Variable declaration
ni=2.4*10^19;     //carrier density(per m^3)
mew_e=0.39;     //electron mobility(m^2/Vs)
mew_h=0.19;     //hole mobility(m^2/Vs)
e=1.6*10^-19;   

//Calculation
sigma_i=ni*e*(mew_e+mew_h);     
rhoi=1/sigma_i;      //resistivity(ohm m)

//Result
printf("\n resistivity is %0.3f ohm m",rhoi)
