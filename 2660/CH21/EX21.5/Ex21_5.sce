clc
d = 50 // defectives
l = 1000 // lot of pieces
p = d/l // proability of an event happening
q = 1-p // proability of an event not happening
n = 4 // sample size
p0 = q^n //probabilities for 0 defectives
p1 = 4*(q)^3*p // probabilities for 1 defectives
p2 = 6*(q)^2*p^2 // probabilities for 2 defectives
p3 = 4*q*(p)^3 // probabilities for 3 defectives
printf("\n  Proabilities for 0,1,2 and 3 defectives are : %0.4f %0.4f %0.4f %0.6f" , p0,p1,p2,p3)
