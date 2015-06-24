//example 3.18

clear;
clc;

//given:
H1=435;//bond dissociation energy for: CH4->CH3+H [KJ/mol]
H2=364;//bond dissociation energy for:CH3->CH2+H [KJ/mol]
H3=385;//bond dissociation energy for:CH2->CH+H [KJ/mol] 
H4=335;//bond dissociation energy for:CH->C+H [KJ/mol]


//to find the C-H bond energy of CH4 from the above bond energies
H=(H1+H2+H3+H4)/4;//the bond energy for C-H bond in CH4 [KJ/mol]
printf("\n H(the C-H bond energy in CH4)=%f KJ/mol. \n",H);
