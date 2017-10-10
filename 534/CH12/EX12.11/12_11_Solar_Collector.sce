clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.11   Page 774 \n')// Example 12.11

// Useful heat removal rate per unit area
// Efficiency of the collector

Ts = 120+273;			//[K] temperature of surface
Gs = 750;                 //[W/m^2] Solar irradiation
Tsky = -10+273;          //[K] Temperature of Sky
Tsurr = 30+273;          //[K] Temperature os surrounding Air
e = .1                  ;// emissivity 
as = .95                ;// Absorptivity of Surface
asky = e                ;// Absorptivity of Sky
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant
h = 0.22*(Ts - Tsurr)^.3334    ;//[W/m^2.K] Convective Heat transfer Coeff
//From equation 12.67
Gsky = stfncnstt*Tsky^4;      //[W/m^2]  Irradiadtion from sky
qconv = h*(Ts-Tsurr);        //[W/m^2]  Convective Heat transfer
E = e*stfncnstt*Ts^4;       //[W/m^2]  Irradiadtion from Surface

//From energy Balance
q = as*Gs + asky*Gsky - qconv - E;

//Collector efficiency
eff = q/Gs;

printf('\n Useful heat removal rate per unit area by Energy Conservation = %i W/m^2 \n Collector efficiency defined as the fraction of solar irradiation extracted as useful energy is %.2f',q,eff);