//example 6.18

clear;
clc;

//Given:
R=82;//Universal gas constant[atm.ml.K^-1.mol^-1]
T=298;//Temperature[K]
V=250;//volume of water[ml]
m2=2.6;//mass of the protein
M2=85000;//molar mass of protein[g.mol^-1]


//To find the osmotic pressure of a solution
n2=m2/M2;//no. of moles of protein
II=(n2*R*T)/V;//Osmotic pressure of a solution[atm]
printf("The osmotic pressure is %f atm ",II);
