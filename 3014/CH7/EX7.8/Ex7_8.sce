clc 
//Given that
mu_0 = 4*%pi*1e-7 // permeability of free space
mu = mu_0 //permeability of silver
sigma = 5.8e7 // conductivity in simens /m
delta = 0.1 // Skin depth penetration in mm

printf("Example 7.8")
f = 2/((delta*1e-3)^2*sigma*mu*2*%pi) // Calculation of skin depth penetration
printf("\n Required frequency is %.2e Hz",f)
printf("\n The incident electromagnetic wave is the radio part of spectrum.")
// Answer in book is 3.36e5 Hz. Difference is due to approximation at intermediate stages

