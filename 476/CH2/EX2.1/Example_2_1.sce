//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 1


clear;
clc;


//Given
W = -2.25*745.7; //work done on system in J/s
Q = -3400*(10^3)/3600; //heat transferred to the surrounding in J/s

//To find the change in internal energy
//Using equation 2.4 (Page no. 26)
U = Q-W; //change in internal energy in J/s
mprintf('Internal energy of system increases by %f J/s',U);

//end