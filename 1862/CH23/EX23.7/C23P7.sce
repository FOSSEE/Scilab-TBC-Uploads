clear
clc
//to find change in internal energy

//Given:
//refer to figure 23-17 from page no. 529
//refer to problem 23-4
//final volume
vf = 1.0//in m^3
//initial volume
vi = 4.0//in m^3
//initialvolume
pi = 10//in Pa
//value of constant for monoatomic gas
gama = 1.66
//number of moles of ideal gas
n = 0.11//in mol
//molar gas constant
R = 8.31//in J/mol.K

//Solution:
//applying laws of thermodynamics
//applying adiabatic relationship
//final pressure of gas
pf = (pi*(vi^gama))/(vf^gama)//in Pa
//initial temperature of gas
Ti = (pi*vi)/(n*R)//in K
//final temperature of gas
Tf = (pf*vf)/(n*R)//in K
//applying internal energy formula
//change in internal energy
delta_Eint = (3/2)*(n*R*(Tf-Ti))//in J
pf = round(pf)
Ti = round(Ti)

printf ("\n\n Final pressure of gas pf = \n\n %3i Pa" ,pf);
printf ("\n\n Initial temperature of gas Ti = \n\n %2i K" ,Ti);
printf ("\n\n Final temperature of gas Tf = \n\n %3i K" ,Tf);
printf ("\n\n Change in internal energy delta_Eint = \n\n %2i J" ,delta_Eint);
