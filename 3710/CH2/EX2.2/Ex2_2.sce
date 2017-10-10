//Example 2.2, Page Number 55
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Excitation Energy Calculation
clc;

r=11.8 //Relative Permeability
m=9.1*(10**-31) //Mass of electron in kilogram
me=0.26*m //Effective mass 

//From equation 2.28
E=13.6*(me/m)*((1/r)**2) //E is the excitation energy in eV
E=fpround(E,4)

mprintf("The Excitation Energy is given by %.3feV",E)
