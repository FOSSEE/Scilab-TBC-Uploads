clc
clear
//INPUT DATA
X=3.5*10^-3 // mobility of free electrons in copper in m^2 V^-1 s^-1
E=0.5 //elactric field strength of copper in V m^-1

//CALCULATION
V=X*E/10^-3//drift velocity of free electrons in copper in m s^-1 *10^-3

//OUTPUT
printf('The drift velocity of free electrons in copper is %3.2f*10^-3 in ms^-1',V)
