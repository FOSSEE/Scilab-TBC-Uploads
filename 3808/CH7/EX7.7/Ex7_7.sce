//Chapter 07: Discrete Probability

clc;
clear;

max_integers=100
E1=100/2     //event that random integer is divisible by 2
E2=100/5     //event that random integer is divisible by 5
E1IE2=100/(5*2)     //event that random integer is divisible by 5 and 2
pE1=E1/max_integers             //probability of event E1
pE2=E2/max_integers            //probability of event E2
pE1IE2=E1IE2/max_integers   //probability of event E1IE2

pE1UE2=pE1+pE2-pE1IE2

disp(pE1UE2,'Probability that random integer is divisible by either 2 or 5 is')
