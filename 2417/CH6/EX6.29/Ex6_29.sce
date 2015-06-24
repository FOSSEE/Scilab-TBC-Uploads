clear;
clc;
printf("\t\t\tProblem Number 6.29\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.29 (page no. 274) 
// Solution

//data given
T1=1000; //absolute initial temperature //unit:R
p2=1; //unit:atm //absolute final pressure
p1=5; //unit:atm //absolute initial pressure
J=778; //conversion factor
R=1545/29; //moleculer weight=29 //Unit:ft*lbf/lbm*R //constant of proportionality
k=1.4; //k=cp/cv //ratio of specific heats
//From the equation, 
T2=T1*((p2/p1)^((k-1)/k)); //Unit:R //The absolute final temperature
printf("The absolute final temperature is %f R\n",T2);
work=(R*(T2-T1))/(J*(1-k)); //Btu/lbm //The work done by air(out)
printf("The work done by air is %f Btu/lbm(out)\n",work)
