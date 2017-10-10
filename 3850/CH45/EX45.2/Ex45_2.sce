

//To Calculate the Resistivity of n type semiconductor

//Example 45.2

clear;

clc;

e=1.6*10^-19;//charge on an electron in Coloumbs

ne=8*10^19;//Density of Conduction Electron per metre^3

ue=2.3;//Mobility of Conduction Electron in m^2/V-s

nh=5*10^18;//Density of holes per metre^3

uh=10^-2;//Mobility of holes per m^2/V-s

c=e*((ne*ue)+(nh*uh));//Conductivity of the Semiconductor in C/(m-V-s)

rho=1/c;//Resistivity of Semiconductor in ohm-metre

printf("Resistivity of the n-type semiconductor = %.3f ohm-m",rho);//The answer provided in the textbook is wrong
