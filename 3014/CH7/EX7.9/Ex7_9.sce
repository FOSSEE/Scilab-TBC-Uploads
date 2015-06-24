 
 
clc 
//Given that
mu_0 = 4*%pi*1e-7 // Permeability of free space
mu = mu_0 //Permeability of silver
sigma = 3e7 // conductivity in mhos/m
f = 1e10 // frequency in Hz
printf("Example 7.9")
delta = sqrt(1/(%pi*sigma*f*mu)) // Calculation of skin depth penetration
printf("\n Skin depth penetration is %f micrometre. \n\n\n",delta*1e6)
// Answer in book is 0.93 micrometer
