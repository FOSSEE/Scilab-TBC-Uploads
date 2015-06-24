//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 23


clear;
clc;


//Given:
To = 298; //initial temperature (K)
Cpm = 97.65; //Mean heat capacity of solution (J/mol K)
Hs = -758; //heat of mixing (J/mol)

//To find the final temperature attained
//Since the process is adiabatic
H = 0;
T = (H-Hs)/Cpm + To;
mprintf('The final temperature attained by the mixing is %f K',T);

//end