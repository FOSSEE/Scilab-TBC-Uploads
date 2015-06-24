clear
clc
//to find tension in string to get 4 loops

// GIVEN:
//refer to figure 18-23 from page no. 418
//freqyuency
fn = 120//in Hz
//length of string
L = 1.2//in meters
//linear mass density of string
mew = 1.6//in g/m
//no. of loops
n = 4

// SOLUTION
//using equation of wave motion
//tension in string to get 4 loops
F = (4*(L^2)*(fn^2)*(mew*10^-3))/(n^2)//in N //taking mew in Kg/m

printf ("\n\n Tension in string to get 4 loops F = \n\n %.1f N",F)


