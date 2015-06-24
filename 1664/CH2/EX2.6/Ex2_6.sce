
//Example No.2.6.
// Page No.61.
clc;clear;
T = 300;//Temperature -[K]
K = 1.38*10^(-23);//Boltzman's constant.
w = 500*10^(-9);//wavelength -[m].
h = 6.626*10^(-34);//Planck's constant.
c = (3*10^(8));//velocity of light.
//By Maxwell's and Boltzman's law.
N = exp((h*c)/(w*K*T)); //Relative population.
printf("\nThe relative population between energy levels N1 and N2 is %3.3e",N);//(Relative population between N1 & N2).
