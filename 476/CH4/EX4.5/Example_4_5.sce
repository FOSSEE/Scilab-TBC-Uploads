//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 5


clear;
clc;


//Given:
m = 2; //mass of gas(kg)
T1 = 277; //initial temperature(K)
T2 = 368; //final temperature(K)
Cv = 1.42; //specific geat at constant volume(kJ/kg K)

//To determine change in entropy
//Using equation 4.31 (Page no. 94)
S = (m*Cv*log(T2/T1)); //change in entropy(kJ/K)
mprintf('Change in entropy is %f kJ/K',S);


//end