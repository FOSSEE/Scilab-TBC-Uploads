clear;
clc;
printf("\t\t\tProblem Number 6.30\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.30 (page no. 274) 
// Solution

//data given
//mass of 1 kg
T1=500+273; //Celsius temperature converted to Kelvin //final temperature
p2=1; //atm //absolute final pressure
p1=5; //atm //absolute initial pressure
J=778; //conversion factor
R=8.314/29; //moleculer weight=29 //Unit:kJ/kg*K //constant of proportionality
k=1.4; //k=cp/cv //ratio of specific heat
//From the equation, 
T2=T1*((p2/p1)^((k-1)/k)); //Unit:Kelvin //The absolute final temperature
printf("The absolute final temperature is %f K or %f C\n",T2,T2-273);
work=(R*(T2-T1))/((1-k)); //kJ/kg //The work done by air(out)
printf("The work done by air is %f kJ/kg(out)\n",work)
