//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 14


clear;
clc;


//Given:
T1 = 335; //initial temperature in K
T2 = 300; //final temperature in K
P1 = 10; //initial pressure(bar)
P2 = 1; //final pressure(bar)
Cp = 29.3; //specific heat constant at constant pressure(kJ/kmol K)
R = 8.314; //ideal gas constant

//To determine change in entropy
//Using equation 4.30 (Page no. 94)
S = ((Cp*log(T2/T1))-(R*log(P2/P1))); //entropy change(kJ/kmol K)
mprintf('Entropy change in the process is %f kJ/kmol K',S);


//end