clear;
clc;
printf("\t\t\tProblem Number 6.16\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.16 (page no. 260) 
// Solution

//data
cp=0.24; //Specific heat at constant pressure //Btu/lbm*R
p2=15; //psia //final pressure
p1=100; //psia //initial pressure
T2=460+0;  //absolute  final temperature //unit:R
T1=460+100; //absolute initial temperature  //unit:R
J=778; //conversion factor
R=1545/29; //moleculer weight=29 //Unit:ft*lbf/lbm*R //constant of proportionality
 //On the basis of the data given,
deltas=(cp*(log(T2/T1)))-((R/J)*(log(p2/p1))); //change in entropy //Btu/lbm*R
printf("The change in enthalpy is %f Btu/lbm*R\n",deltas);
