clear;
clc;
printf("\t\t\tProblem Number 6.33\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.33 (page no. 279) 
// Solution

//data given in problem 6.32,
n=1.3; //p*v^1.3=constant
k=1.4; //k=cp/cv //ratio of specific heats
cp=0.24; //specific heat at constant pressure //Btu/lbm*R
T2=600; //absolute final temperature //unit:R
T1=1500; //absolute initial temperature //unir:R
R=53.3; //Unit:ft*lbf/lbm*R //constant of proportionality
J=778; //conversion factor
//Equation,
// T1/T2=((p1/p2)^((n-1)/n));
//rearranging,
p1byp2=exp(log(T1/T2)/((n-1)/n)); //The ratio of inlet to outlet pressure
printf("The ratio of inlet to outlet pressure is %f\n",p1byp2);
