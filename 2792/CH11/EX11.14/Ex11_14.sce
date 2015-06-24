clc
n = 1.1*10^18
disp("n = "+string(n)+"cm^-3") //initializing value of number of electron or hole
nth=1.32*10^18
disp("nth = "+string(nth)+"cm^-3") //initializing value of theshold density
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
d = 2*10^-4
disp("d= "+string(d)+"cm")//initializing value of active layer thickness
Tr = 2.4*10^-9
disp("Tr= "+string(Tr)+"J")//initializing value of radiatve recombination time
Jth = (e*nth*d)/Tr
disp("The current density is Jth = (e*nth*d)/Tr= "+string(Jth)+"A/cm^2")//calculation


