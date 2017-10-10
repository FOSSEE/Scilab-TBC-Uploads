//Chapter 14: Water Treatment
//Problem: 6
clc;

//Initialisation of Variables
v1 = 150   //in litres for NaCl

//Solution
a_hardwater = 22500 * v1 /(3 * 0.6 * 58.5)

mprintf("The amount of hard water that can be softened using this softner is:%.1f litres",a_hardwater)
