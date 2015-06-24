clear;
clc;
//Coulson and Richardson's Chemical Engineering Volume I
//Chapter 10 Example 11
//Page 630
printf('Example 10.11');
//What factor will the mass transfer rate across interface change

k = 2.5*10^-6            //[s^-1] Rate constant
E = 2.643*10^7           //[J/kmol] Energy of Activation
R = 8314                 //[J/kmol.K] Universal gas contss
D = 10^-9                //[m^2/s] MOlecular diffuisivity
L = .01                  //[m] Film Thickness

//At T =293K
T = 293                 //[K] temperature
A = k/exp(-E/(R*T));    //[s^-1]
e = exp(-2*L*sqrt(k/D));
N = sqrt(k/D)*(1+e)/(1-e); //Consider relative Solubility at 293 K be unity

//At T =313K
T2 = 313                 //[K] temperature
k2 = A*exp(-E/(R*T2));    //[s^-1]
e2 = exp(-2*L*sqrt(k2/D));
N2 = .8*sqrt(k2/D)*(1+e2)/(1-e2); //Consider relative Solubility at 313 K be .8 wrt that of 293K

Nr = N2/N;

printf('\n\nChange in mass transfer rate is given by factor %.2f',Nr)
//END