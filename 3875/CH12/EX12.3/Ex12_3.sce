clc;
clear;
delta_x=10^-9 //uncertainity in the position of electron in m
h=6.63*10^-34 //Plancks constant in J-s

//calculation
delta_p=h/(4*%pi*delta_x)

mprintf("The uncertainity in momentum of the electron is = %1.2e kgms^-1",delta_p)
//The answer provided in the textbook is wrong.
