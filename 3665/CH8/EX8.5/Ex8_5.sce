clc//
//
//

//Variable declaration
ni=2.5*10^19;     //carrier density(per m^3)
mew_e=0.39;     //electron mobility(m^2/Vs)
mew_p=0.19;     //hole mobility(m^2/Vs)
e=1.6*10^-19; 
l=1*10^-2;     //length(m)
A=10^-3*10^-3;     //area(m^2)

//Calculation
R=l/(ni*e*A*(mew_p+mew_e));     //resistance(ohm)

//Result
printf("\n resistance is %0.2f *10^3 ohm",R/10^3)
