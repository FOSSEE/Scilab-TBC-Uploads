clear;
clc;
printf("\t\t\tProblem Number 6.28\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.28 (page no. 271) 
// Solution

//data given in problem 6.27
T=50+273; //Celsius temperature converted to Kelvin //final temperature
v2=1/2; //Because,v2=(1/2)*v1 //volume increases to its half its final volume
v1=1;
R=8.314/32; //moleculer weight of oxygen=32 //Unit:kJ/kg*K //constant of proportionality
//From the equation, q=((R*T))*log(v2/v1)
q=R*T*log(v2/v1); //heat added //kJ/kg
printf("The heat added to system is %f kJ/kg(heat out of system)\n",q);
//For a constant temperature,
deltas=q/T; //Change in entropy //unit:kJ/kg*K
printf("The change in entropy is %f kJ/kg*K\n",deltas);
