clc
n = 1000 // number of units
s = 4 // random sample
d = 50 // defectives
z = d*s/n
pp0 = exp(-0.2)*1 // poisson probabilities for 0 defectives
pp1 = exp(-0.2)*(z) // poisson probabilities for 1 defectives
pp2 = exp(-0.2)*(z^2/factorial(2)) // poisson probabilities for 2 defectives
pp3 = exp(-0.2)*(z^3/factorial(3))// poisson probabilities for 3 defectives
printf("\n Proabilities for 0,1,2 and 3 defectives are : %0.3f ,%0.4f, %0.4f, %0.5f" , pp0,pp1,pp2,pp3)
