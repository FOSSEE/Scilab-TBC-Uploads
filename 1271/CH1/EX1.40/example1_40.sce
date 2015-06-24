clc 
// Given That
D1 = 3e-3 // diameter of nth dark fringe when liquid is absent between the lens and the plate in m
D2 = 2.5e-3 // diameter of nth dark fringe when liquid is introduced between the lens and the plate in m
c = 3e8 // velocity of light in vacuum in m/sed
// Sample Problem 40 on page no. 1.54
printf("\n # PROBLEM 40 # \n") 
mu = D1^2 / D2^2// calculation for refractive index
v = 3e8 / mu // calculation for velocity of light 
printf("\n Standard formula used \n mu = D1^2 / D2^2. \n v = 3e8 / mu. \n")
printf("\n Refractive index of liquid = %f.\n velocity of light in the liquid = %e m/sec.",mu,v)
