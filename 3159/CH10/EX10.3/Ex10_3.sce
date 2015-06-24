// Estimate diffusion coefficient
clc
t_r = 100 // relaxation time in s
d = 2.5 // distance in angstrom
printf("\n Example 10.3")
f = 1/t_r // jump frequency
D = (d*1e-10)^2*f
printf("\n Diffusion coefficient is %.2e m^2 s^-1",D)

