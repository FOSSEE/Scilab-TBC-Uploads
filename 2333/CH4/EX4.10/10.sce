clc 
  
// Given that
mu_o = 1.658 // refractive index of material for ordinary ray
mu_e = 1.486 // refractive index of material for extra ordinary ray
c = 3e8 // speed of light in m/sec
// Sample Problem 10 on page no. 216
printf("\n # PROBLEM 10 # \n")
v_o = c/mu_o // velocity of ordinary ray
v_e = c/mu_e // velocity of extra ordinary ray
printf("Standard formula used \n mu=tan(Ip)\n")
printf("\n Velocity of ordinary ray is %e m/sec \n Velocity of extra ordinary ray is %e m/sec",v_o,v_e)
