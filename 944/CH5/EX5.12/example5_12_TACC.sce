//example 5.12

clear;
clc;

//Given:
n=1;//no. of moles
T=273;//temperature [K]
Hf=6000;//enthalpy of fusion at 273K [J/mol]
k=1.38*(10^-23);//boltzmann constant[J/K]

//To find the relative number of distinguishable quantum states in 1 mole of water and ice at 273K 

p=Hf/(k*T)/2.303;
w=10^(p);//w is the relative no. of distinguishable quantum states
printf("The relative no. of distinguishable quantum states in 1 mole of water and ice at 273K is %f",w);



