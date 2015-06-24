 
clc 
//Given that
n = 1.5 // Refractive index
epsilon = 5.6 // Static dielectric constant
printf("Example 4.15")
per = (1-((n^2-1)/(n^2+2))*(epsilon+2)/(epsilon-1))*100 // Pecentage ionic polarisability
printf("\n Percentage ionic polarizability is %f pecent\n\n\n",per)
// Answer in book is 5.14 %
