//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 9


clear;
clc;


//Given:
T1 = 288; //temperature of surrounding (K)
T2 = 261; //temperature of solution (K)
Q2 = 1000; //heat removed (kJ/min)

//To determine the least amount of power
//Using eq. 5.57 (Page no. 137)
W = Q2*((T1-T2)/T2); //power in kJ/min
P = (W*1000)/(746*60); //power in hp
mprintf('Least amount of power necessary is %f hp',P);

//end