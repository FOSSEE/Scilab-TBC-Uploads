//Ex2_8 Pg-89
clc

disp("Conductivity of an intrinsic material is given by ")
disp("     sigma = e*ni*un*(1+up/un)")
sigma_i=100/60 
ni=2.5*10^19 //concentration of intrinsic carrier in m^3
up_un=0.5
e=1.6*10^(-19) //electron charge
un=(sigma_i/(e*ni*(1+(up_un)))) //concentration of electrons
up=un/2 //holes concentratin

disp("     Let n be eletron concentration and p be hole con-centration for doped sample. Sincethe sample is electrically neutral,we have")
disp("          Nd + p = Na + n")
disp("   Where Nd is donor concentration and Na is acceptor concentration,assumed to be fully ionized. From mass action law,we have np =ni^2*S0")
disp("          Nd + (ni^2)/n = Na + n")
disp("or        n^2 + (Na-Nd)*n-ni^2 = 0")
disp("or        n=0.5*([Nd-N])(+/-) sqrt(Nd-Na)^2 + 4*ni^2)")
disp("   n is positive and hence we can drop negative sign before the radical")

Nd=10^20 //number density of donor atoms /m^3
Na=5*10^19 //number of acceptor atoms in /m^3
n=0.5*((Nd-Na)+ sqrt((Nd-Na)^2 + 4*ni^2)) //electron concentration for doped sample
p=ni^2/n //hole concentration for doped sample
conduct_doped=e*(n*un+p*up) //conductivity of doped sample(value in textbook is wrong)
printf("\n Conductivity of doped sample = %.2f S/m \n",conduct_doped)

disp("     We have assumed that carrier mobilities in the doped signal sample are the same as those in the intrinsic material.This assumption is justified by the low doping level, and Coulomb scaterring Applied by the ionized impurities is weak at 300K.")
disp("Applied electric field")

F_cm=2 //applied electric field in V/cm
F_m=2*100 //applied electric field in V/m
J=conduct_doped*F_m //total conduction current density
J_cm=J/1000 //cm^2 to m^2s

printf("Total conduction current density = %.0f A/m^2",J) 
printf("\n                               = %.2f A/cm^2",J_cm)
