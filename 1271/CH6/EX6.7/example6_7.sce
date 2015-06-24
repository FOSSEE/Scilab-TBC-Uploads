clc 
// Given that
Mp = 1.67e-27 // mass of proton in kg
v = 3e5 // speed of proton in meter/sec
B = 5e-9 // magnetic field in tesla
e = 1.6e-19 // charge on a proton in coulomb
// Sample Problem 7 on page no. 6.23
printf("\n # PROBLEM 7 # \n")
r = (Mp * v) / (e * B)//calculation for Larmour radius
printf("\n Standard formula used \n r=m*v/(e*B). \n")
printf("\n Larmour radius = %e meter",r)
