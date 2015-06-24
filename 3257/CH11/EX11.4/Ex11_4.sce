// Shrinkage in sintering
clc
L = 1 // let
del_l = 5/100*L // linear shrinkage
rho_sint = 90 // sintered density in%
printf("\n Example 11.4")
rho_green = rho_sint*(1-(del_l/L))^3
printf("\n Density of green compact becomes %d%%.",rho_green)

