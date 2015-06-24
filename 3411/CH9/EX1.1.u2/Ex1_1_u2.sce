//Example 1_1_u2
clc();
clear;
//To calculate energy momentum and the probability of of finding the particle
n=3
h=6.63*10^-34
m=1.67*10^-27
l=0.1*10^-9
e=(n^2*h^2)/(8*m*l^2)    //units in joules
printf("The energy of the particle is E=")
disp(e)
printf("Joules")
lamda=(2*l)/n       //units in mts
lamda=6.6*10^-11  //units in mts
p=h/lamda        //units in Kg mts^-1
printf("\nMomentum is p=")
disp(p)
printf("Kg  ms^-1")
prob=((1/3)-0)
printf("\nThe probability of finding the particle is =%.2f",prob)
