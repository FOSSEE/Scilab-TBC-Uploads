//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 4


clear;
clc;


//Given:
T1 = 300; //initial temperature (K)
T2 = 800; //final temperature (K)

//Heat capacity (J/mol K)
//Cp = 26.04+(5.586*10^-3*T)+(28.476*10^4*T^-2)

//To determine the increase in entropy of solid magnesium
//Integrating Eq 6.31 (Page no. 198), we get
//S = intg(Cp*(dT/T))
S = 26.04*log(T2/T1)+5.586*10^-3*(T2-T1)+28.476*10^4/(-2)*(T2^-2-T1^-2);
mprintf('The increase in entropy of solid magnesium is %f J/mol K',S);

//end