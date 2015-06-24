clc
clear
//Input data 
R=8.32;//Universal gas constant in joules/mole-K 
t=727;//The given temperature in degree centigrade 
N=6.06*10^23;//The Avogadro number

//Calculations 
T=273+t;//The given temperature in K 
k=R/N;//Boltzmann constant in joules/mol-K 
E=(3/2)*k*T;//Mean translational kinetic energy per molecule in joules 

//Output
printf('The mean translational kinetic energy per molecule is K.E = %3.4g joule ',E)
