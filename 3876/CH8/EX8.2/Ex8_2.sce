//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
n= 1 //mole
x= 3
y= 4

//CALCULATIONS
r= x**2/n**2
z= n/x
n= n+z
n1= x-z

//RESULTS
mprintf("Moles of acid and alcohol= %.2f moles",n)
mprintf("\nMoles of ester and water= %.2f moles",n1)
