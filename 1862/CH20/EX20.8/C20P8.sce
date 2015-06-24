clear
clc
//to find difference between masses of combined ball from sum of masses of original balls

//Given:
//mass of ball
m = 35//in gram
//speed of ball
v = 1.7//in m/s
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying fomule for energy and mass in special relativity 
//applying conservation of energy
//increase in rest energy
delta_E0 = 2*((1/2)*(m*10^-3)*(v^2))//in J //taking mass in Kg
//increase in mass
delta_m = delta_E0/(c^2)//in Kg

printf ("\n\n Increase in rest energy delta_E0 = \n\n %.3f J" ,delta_E0);
printf ("\n\n Difference between masses of combined ball from sum of masses of original balls delta_m = \n\n %.1e Kg" ,delta_m);
