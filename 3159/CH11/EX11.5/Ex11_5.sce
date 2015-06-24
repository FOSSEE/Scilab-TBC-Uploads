// Estimate the change in yield strength 
clc
n1 = 1e6 // initial number of particles
n2 = 1e3 // final number of particle
printf("\n Example 11.5")
k = (n1/n2)^(1/3)
printf("\n Yield strength would have decreased to %d%% of its initial value.",100/k)
