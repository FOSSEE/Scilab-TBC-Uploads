clc
//Initialization of variables
E=22*10^3 //kJ/mol
T=293 //K 
//calculations
ratio=%e^(-E/(8.31451*T))
//results
printf("Relative populations of boat and chair conformations is %.1e",ratio)
