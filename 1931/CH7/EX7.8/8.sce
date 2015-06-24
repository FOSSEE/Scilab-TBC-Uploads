clc
clear
//INPUT DATA
I=10//current in A
r=0.8*10^-2//radius of wire in m
n=8.48*10^28 //density of free electron in m^-3
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
J=(I/(3.14*r^2))/10^4 //current density of copper in Am^-2 *10^4
v=(J/(n*e))/(10^-6*10^-4)//drift velocity of copper in ms^-1 *10^-6

//OUTPUT
printf('The drift velocity in copper is %3.4f *10^-6 in ms^-1 \n The current density in copper is %3.4f *10^4 in Am^-2',v,J)
