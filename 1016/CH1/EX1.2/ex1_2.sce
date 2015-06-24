clc;clear;
//Example 1.2
//Calculation of the distance of separation between two electrons

// given values
m=9.1*10^-31;//mass of elctron in kg
q=1.6*10^-19;//charge on electron in C
g=9.81;//acceleration due to gravity in m/(s^2)

//calculation
Fg=m*g;//gravitational force in N
d=sqrt((9*10^9*q^2)/Fg);//equating gravitational force with electrosatic force for calculating distance
disp(d,'The distance of separation(in m) is') 