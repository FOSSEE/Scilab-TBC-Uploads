//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 4.3w
//calculation of ratio of the electrical force to the gravitational force between two electrons

//given data
me=9.1*10^-31//mass(in kg)of an electron
e=1.6*10^-19//charge(in coulomb)of an electron
k=9*10^9//value of ratio 1/(4*%pi*epsilonzero)   (in N m^2/C^2)
G=6.67*10^-11//value of universal gravitational constant   (in N m^2/kg^2)

//calculation
ratio=(k*e*e)/(G*me*me)//ratio = electric force / gravitational force

disp(ratio,'the ratio of electric to gravitational force between two electrons is')
