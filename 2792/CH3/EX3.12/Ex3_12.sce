clc
alpha=(3*10^(3))
disp("alpha = "+string(alpha)+"cm^-1") //initializing value of absorption coefficient near the bandedges of GaAs
p=(10^(3))
disp("(power density)p = "+string(p)+"W cm^-2") //initializing value of power density that impringes on GaAs
Tr = 1.5*1.6*10^-19
disp("Tr= "+string(Tr)+"J")//initializing value of photon energy
d = 10^-3
disp("d= "+string(d)+"")//initializing value of photon energy
Rg1 = (alpha*p)/Tr
disp("The carrier generation rate at the surface is ,Rg(0) = (alpha*p)/Tr = "+string(Rg1)+"cm^-3s^-1")//calculation
Rg2 = (alpha*p*exp(-3))/Tr
disp("The carrier generation rate at the depth of 10 um is ,Rg(10) = (alpha*p*exp(-3))/Tr = "+string(Rg2)+"cm^-3s^-1")//calculation

