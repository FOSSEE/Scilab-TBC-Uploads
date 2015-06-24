// calculate the rate at which hydrogen escapes through the walls of the steel tank
clc
t = 5 // thickness in mm
c = 10 // concentration
D = 1e-9 // diffusion coefficient
printf("\n Example 8.1")
j  = D*c/(t*1e-3)
printf("\n Outward flux is %.0e kg m^-2 s^-1",j)

