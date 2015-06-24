//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 19


clear;
clc;

//Given:
T = 10; //temperature of metal (K)
Cp = 0.45; //molar heat capacity at 10 K (J/mol K)
//Molar heat capacity of a substance at low temperatures can be approximated by the relation
//Cp = a(T^3) where a is constant


//To determine the molar entropy of metal
//Entropy of solid at 10 K is calculated using first integral in equation 4.55 (Page no. 108)
S = Cp/3;
mprintf('Molar entropy of meatl at 10 K is %f J/mol K',S);

//end