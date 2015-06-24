clear
clc
//to find kinetic energy needed to produce Z0

//Given:
//refer to sample problem 20-8
//rest energy
E0 = 91.2//in GeV
//rest energy of electron and positron
E = 0.511//in MeV
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying fomule for energy and mass in special relativity 
//change in rest energy
delta_E0 = E0-(2*(E*10^-3))//in GeV //coveting E into GeV
//applying conservation of energy
//kinetic energy needed to produce Z0
delta_K = -(delta_E0)//in GeV

printf ("\n\n Change in rest energy delta_E0 = \n\n %.1f GeV" ,delta_E0);
printf ("\n\n Kinetic energy needed to produce Z0 delta_K = \n\n %.1f GeV" ,delta_K);
