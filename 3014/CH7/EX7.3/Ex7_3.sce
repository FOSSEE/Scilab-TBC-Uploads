
clc 
//Given that
mu_0 = 4*%pi*1e-7 // permeability of free space
mu = mu_0 //permeability of silver
sigma = 3e7 // conductivity in mhos/m
f = 1e8 // frequency in Hz
printf("Example 7.3")
omega = 2*%pi/f // Calculation of time period
delta = sqrt(2/(omega*sigma*mu)) // Calculation of skin depth penetration
Delta = floor (delta/100)*100 // Rounding off
printf("\n Skin depth penetration is %e cm. \n\n\n",Delta*1e-6)

