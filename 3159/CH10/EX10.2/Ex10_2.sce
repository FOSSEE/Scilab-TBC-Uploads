// Calculation of stress in fibers
clc
Y_f = 440
Y_m = 71 
sigma_total= 100 // total load
printf("\n Example 10.2")
r = Y_f/Y_m
sigma_f = r*(sigma_total/0.7)/(1+r*3/7)
printf("\n Part A:")
printf("\n When load is applied parallel to fiber then, stress in fiber is %d MN m^-2",sigma_f)

printf("\n\n Part B:")
printf("\n When load is applied perpendicular to fiber then, stress in fiber and matrix is same i.e. %d MN m^-2",sigma_total)

