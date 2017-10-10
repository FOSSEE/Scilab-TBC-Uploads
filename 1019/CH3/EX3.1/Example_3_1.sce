//Example 3.1
clear;
clc;

//Given 
delE = -97030;//change in internal energy in Joule
R = 8.314;//R is gas constant in J K^-1 mol^-1
T = 298;//T is temperature in K

//To determine the heat of reaction
delv= 1-(1+(1/2));//change in moles
delH = delE + (delv*R*T);//H is the heat of the reaction in Joule (1st law of thermodynamics)
mprintf('Heat of the reaction= %f J',delH);
//end