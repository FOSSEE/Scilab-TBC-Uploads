//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 8


clear;
clc;


//Given:
m1 = 10; //mass of water at 375 K (kg)
m2 = 30; //mass of water at 275 K (kg)
c = 4.2; //specific heat of water (kJ.kg K)


//To determine the change in entropy

//Let T be the final temperature(K)
T = ((m1*375)+(m2*275))/(m1+m2);
//S1 be change in entropy for hot water
S1 = (m1*c*log(T/375)); //[kJ/K]
//S2 be the change in entropy for cold water
S2 = (m2*c*log(T/275)); //[kJ/K]
//S be the total entropy change
S = S1+S2; 
mprintf('The total entropy change is %f kJ/K',S);
//end