clc
clear
//Initialization of variables
m0=18.016 //lbm
gc=32.1739 //lbm ft/lbf sec^2
c=186000*5280
dU=94.4*10^6 //ft-lbf
//calculations
U=m0/gc *c^2
dm= -dU*gc/c^2
//results
printf("Absolute energy of this mixture = %.2e ft-lbf",U)
printf("\n In case b, there is no change in mass")
printf("\n Change in mass = %.2e lbm",dm)
disp("The answers are a bit different due to rounding off error in textbook.")
