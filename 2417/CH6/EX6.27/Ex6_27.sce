clear;
clc;
printf("\t\t\tProblem Number 6.27\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.27 (page no. 270) 
// Solution

//data given
T=50+273; //Celsius temperature converted to Kelvin //final temperature //unit:K
v2=1/2; //Because,v2=(1/2)*v1 //volume increases to its half its final volume
v1=1;
R=8.314/32; //moleculer weight of oxygen=32 //Unit:kJ/kg*K //constant of proportionality
//From the equation, q=((R*T))*log(v2/v1)
q=R*T*log(v2/v1); //heat added //kJ/kg
printf("The heat added to system is %f kJ/kg(heat out of system)\n",q);
//The work out of the system is equal to the heat added;thus,
W=q; //The work out of the system  //unit:kJ/kg
printf("The work out of the system is %f kJ/kg(into system)\n",W);
