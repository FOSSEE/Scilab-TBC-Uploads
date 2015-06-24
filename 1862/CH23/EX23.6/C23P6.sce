clear
clc
//to find time required for room temperature to be 21 degree celsius

//Given:
//room temperature
T = 0//in degree celsius
//length of room
l = 6//in meters
//breadth of room
b = 4//in meters
//height of room
h = 3//in meters
//power of heater
p = 2//in KW
//final air temperature
T1 = 21//in degree celsius
 
//Solution:
//applying laws of thermodynamics
//volume of room
V = (l*b*h)*1000//in L
//number of moles of gas
n = V/22.4//in mol //since 1 mol occupies 22.4L of volume
//refer to table 23-4
//molar heat capacity
Cv = 20.8//in J/mol.K
//using relation of heat capacity
//absorbtion of heat take place
Q = n*Cv*(T1-T)//in J
//time required for room temperature to be 21 degree celsius
t = Q/(p*10^3)//in seconds //taking power in W
t = nearfloat("pred",701)

printf ("\n\n Volume of room V = \n\n %5i L" ,V);
printf ("\n\n Number of moles of gas n  = \n\n %.1e mol" ,n);
printf ("\n\n Absorbtion of heat take place Q = \n\n %.1e J" ,Q);
printf ("\n\n Time required for room temperature to be 21 degree celsius t = \n\n %3i seconds" ,t);
