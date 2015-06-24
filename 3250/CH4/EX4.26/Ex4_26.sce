clc 
// Given that 
n = 0.25 // Value of exponent of time in Taylor's tool life equation
C = 75 // Value of constant in Taylor's tool life equation
Lc = .15 // Labour cast in $/min
Tc = 2.50 // Total cast of tool in $
t = 2 // Change time for tool in min
// Sample Problem 26 on page no. 268
printf("\n # PROBLEM 4.26 # \n")
x = (C)^(1/n) // Where x = k/(f^(1/n))
v_opt = ((n*x*Lc)/((1-n)*((Lc*t+Tc))))^(n)
printf(" \n Cutting speed that will be lead to minimum cast = %f m/min",v_opt)
