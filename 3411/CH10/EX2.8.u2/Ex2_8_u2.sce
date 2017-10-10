//Example 2_8_u2
clc();
clear;
//TO Find the energy at which probability of occupancy is 0.9 and density of states and the population density
fe=0.9
k=(1/fe)-1
logk=log(k)
kb=8.62*10^-5                  //units in eV/K
t=1000      //units in K
E=logk*kb*t        //units in eV
ef=7.06      //units in eV
energy=E+ef      //units in eV
printf("The energy of this state is E=%.2f eV",energy)
n=9.1*10^-31                        //units in Kgs
EE=energy           //units in eV
h=4.14*10^-15       //units in eV sec
ZE=(8*sqrt(2)*%pi*n^1.5*sqrt(EE))/h^3        //units in meter^-3 (eV)^-1
ZE=ZE*1.56*10^28                           //units meter^-3 (eV)^-1
printf("\nThe density of the states for this energy is Z(E)=")
disp(ZE)
printf("meter^-3 (eV)^-1")
ne=ZE*fe   //units in meter^-3 (eV)^-1
printf("\nThe population density for this energy is N(E)=")
disp(ne)
printf("meter^-3 (eV)^-1")
