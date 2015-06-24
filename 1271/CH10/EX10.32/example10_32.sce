clc 
// Given that
k = 81 // relative permittivity of water 
c = 3e8 // speed of light in meter/sec
// Sample Problem 32 on page no. 10.49
printf("\n # PROBLEM 32 # \n")
printf(" Standard formula used \n")
printf(" mu_ = ( mu*epsilon /(mu_0/*psilon_0))^1/2  \n \n" )
mu = sqrt(k)
v = c / mu
printf(" Refractive index of distilled water is %d .\n Speed of light in water is %e m/sec.",mu,v)
