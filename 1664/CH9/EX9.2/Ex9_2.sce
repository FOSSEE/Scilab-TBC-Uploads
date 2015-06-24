
//Example No.9.2.
//Page No.266.
//To find conductivity of semiconductor.
clc;clear;
d20 = 250;//Conductivity at 20 degree celcius -[ohm^-1 m^-1].
d100 = 1100;//Conductivity at 100 degree celcius -[ohm^-1 m^-1].
k = 1.38*10^(-23);//Boltzman's constant.
Eg = (2*k*((1/373)-(1/293))^(-1)*log((d20/d100)*(373/293)^(3/2)));//Band gap in joules.
printf("\nBand gap of semiconductor in joules is %3.3e J",Eg);
Eg = Eg/(1.6*10^(-19));//band gap in eV.
printf("\nBand gap of semiconductor in eV is %.4f eV",Eg);
