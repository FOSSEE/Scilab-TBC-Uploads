clear;
clc;
printf("\t\t\tProblem Number 6.13\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.13 (page no. 255) 
// Solution

//From equation,cv=R/(k-1) ,
R=8.314/32; //constant of proportionality //kJ/kg*K //The molecular weight of oxygen is 32
k=1.4 //for oxygen //given //k=cp/cv
cv=R/(k-1); //Specific heat at constant volume //unit:kJ/kg*K
printf("Specific heat at constant volume is %f kJ/kg*K\n",cv);
cp=k*cv; //specific heat at constant pressure //Unit:kJ/kg*K
printf("Specific heat at constant pressure is %f kJ/kg*K\n",cp);
