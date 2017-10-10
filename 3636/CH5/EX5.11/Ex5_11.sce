clc;
clear;
Na=4.22*10^14 //doping densities in cm^-3
Nd=4.22*10^16 //in cm^3
e=1.6*10^-19 //in eV
Vbi=0.65 //breakdown voltage in V
ni=1.5*10^10 //in cm^-3
epsilon_si=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
V=10 //applied voltage in V
Const=0.0259 //value for kT/e in V

//Calculation
Nd=sqrt((exp(Vbi/Const)*ni^2)/100)
Na=100*Nd
W=(((2*epsilon_0*epsilon_si*(Vbi+V))*(Na+Nd))/(e*Na*Nd))^0.5
Cj=(epsilon_0*epsilon_si)/W

mprintf("Depletion capacitance per unit area= %1.3e F/cm^2\n",Cj) //The answers vary due to round off error
mprintf("Width of depletion region= %1.2e cm",W) //The answers vary due to round off error
