clc 
// Given that
B_max = 1.375 // maximum value of B in Wb/m^2
a = 0.513 // area of the loop in cm^2
k = 1000 // value of 1 cm on x axis in A/m
k_ = 1 // value of 1 cm on y axis in Wb/m^2
B = 1.375 // alternating magnetic flux density in Wb/m^2
v = 1e-3 // volume of specimen in m^3
f = 50 // frequency in Hz
// Sample Problem 21 on page no. 18.28
printf("\n # PROBLEM 21 # \n")
printf("Standard formula used \n K = a * k * k_.\n")
K = a * k * k_
L = K * v * f
printf("\n Hysteresis loss per sec is %f W",L)
