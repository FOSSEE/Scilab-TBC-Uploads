clc
clear
//INPUT DATA
n=8.5*10^28 //density of free electrons in copper in m^-3
A=1.05*10^-6 //sectional area of copper in m^2
e=1.6*10^-19//charge of electron in coloumbs
I=1 //copper wire carries a current in A

//CALCULATION
V=(1/(A*n*e))/10^-5//drift velocity of free electrons in copper wire in ms^-1 *10^-5

//OUTPUT
printf('The drift velocity of free electron in a copper wire is %3.3f *10^-5 in ms^-1',V)
