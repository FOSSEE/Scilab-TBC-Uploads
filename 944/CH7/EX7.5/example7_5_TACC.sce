//example 7.5

clear;
clc;

//Given:
r1=0.001;//the population of the states at a higher energy to that at a lower energy 
dE=8*10^-20;//The difference in energy[J]
k=1.381*10^-23;//Boltzmann constant [J/K]


//To find the Temperature at this condition 
x=k*log(r1);
T=-dE/x;//[K]
printf("The Temperature at this condition is %f K",T);