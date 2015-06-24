clc 
// Given that
d= 0.05 // Depth of cut in mm
f =200 // Feed rate in mm/min
theta = 850 // Surface temperature in °C
Theta = 700 // Maximum surface temperature of workpiece surface required to maintain in °C
// Sample Problem 22 on page no. 251
printf("\n # PROBLEM 4.22 # \n")
K = theta * (f^0.2)/(d^0.9)
r = Theta/K
C = d*f
Dm = (r*C^0.2)^(1/1.1)
fm = C/Dm
printf(" \n Required depth of cut = %f mm,\n Required feed = %d mm/min",Dm,fm)
