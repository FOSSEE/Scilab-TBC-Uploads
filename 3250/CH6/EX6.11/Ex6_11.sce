clc
// Given that
w = 150 // Width of slot in micro meter
t = 1 // Thickness of tungsten sheet in mm
P = 5 // Power of electron beam in KW
// Sample Problem 11 on page no. 391
printf("\n # PROBLEM 6.11 # \n")
C = 12 // Specific power consumption for tugsten in W/(mm^3/min) from the table 6.7 given in the book 
v = (P*(1000)/C)*(1000/(w*t))*(1/600)
printf("\n Speed of cutting = %f cm/sec",v)
