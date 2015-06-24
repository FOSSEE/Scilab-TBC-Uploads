clear
clc
//to find entropy change of water during process

//Given:
//mass of water
m = 1.8//in Kg
//initial temperature of water and hot plate
Ti = 20//in degree celsius
//final temperature of hot plate
Tf = 100//in degree celsius
//heat capacity of water
c = 4190//in J/Kg.K

//Solution:
//applying laws of thermodynamics
//applying formula for entropy change
//entropy change of water during process
delta_S = m*c*(log((Tf+273)/(Ti+273)))//in J/K //taking temperatures in K

printf ("\n\n Entropy change of water during process delta_S = \n\n %4i J/K" ,delta_S);
