//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 17


clear;
clc;

//Given:
To = 275; //temperature of quenching oil (K)

//To calculate loss in capacity of doing work

//Referrring example 4.9 (Page no. 95)
S_steel = -26.25; //change in entropy os casting (kJ/K)
S_oil = 43.90; //change in entropy of oil (kJ/K)

S_tot = S_steel+S_oil; //total entropy change
//Let W be loss in capacity for doing work
W = To*S_tot; //(kJ)
mprintf('The loss in capacity for doing work is %f kJ',W);

//end