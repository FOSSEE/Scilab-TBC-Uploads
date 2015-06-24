clc 
  
// Given that
D = 120 // Distance between eyepiece and screen in cm
d = 0.075 // DISTANCE BETWEEN TWO VIRTUAL COHERENT SOURCE in cm
x = 1.888 // Distance of 20th bright fringe from center in cm
n = 20 // Number of fringes
// Sample Problem 15 on page no. 99
printf("\n # PROBLEM 15 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
Beta = x/n // Calculation of fringe width in m
lambda = Beta*d/D*1e-2 // Calculation of wavelength 
printf("\n Wavelength of light is %d angstrom.", lambda*1e10)
