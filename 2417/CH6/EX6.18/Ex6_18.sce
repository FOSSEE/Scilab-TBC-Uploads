clear;
clc;
printf("\t\t\tProblem Number 6.18\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.18 (page no. 261) 
// Solution

//data,
cp=0.9093; //Specific heat at constant pressure //kJ/kg*R
p2=150; //kPa //final pressure
p1=500; //kPa //initial pressure
T2=273+0;  //final temperature //Celsius converted to kelvin
T1=273+100; //initial temperature //Celsius converted to kelvin
//J=778; //conversion factor
R=8.314/32; //moleculer weight of oxygen=32 //Unit:ft*lbf/lbm*R //constant of proportionality
//Using equation, and dropping J gives,
deltas=(cp*(log(T2/T1)))-((R)*(log(p2/p1))); //change in entropy //kJ/kg*K
//For 2 kg,
deltaS=2*deltas; //The change in enthalpy in kJ/K
printf("For 2 kg oxygen,The change in enthalpy is %f kJ/K\n",deltaS);
