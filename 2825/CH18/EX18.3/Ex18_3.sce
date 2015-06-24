//Ex18_3 Pg-946
clc

disp("Average wavelength of visible radiation = 550 nm")
disp("      E1 - E2 = hc/lamda")
h=6.6*10^(-34) //planck constant
c=3*10^(8) //speed of light in sec
lamda= 550*10^(-9) //wavelength in m
E=h*c/lamda //difference in energy levels in Joules
e=1.6*10^(-19) //electron charge in eV
E_eV=E/e //difference in energy levels in electronVolt
printf("               = %.1f*1e-19 J \n",E*1e19)
printf("               = %.2f eV \n",E_eV)

T=300 //temperature in Kelvin
k=1.38*10^(-23) //Boltzmann constant
disp("Average room temperature=300K and g1=g2,we have")
N=exp((-E)/(k*T))
printf(" N2/N1 = %.2f*1e-37",N*1e37)
//answer in the book is wrong
