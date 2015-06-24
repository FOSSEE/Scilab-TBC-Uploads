
clc 
//Given that
n = 1.5 // Refractive index
epsilon = 4 // Static dielectric constant
epsilon_0 = 8.85e-12 // permittivity of free space
printf("Example 4.17")
k1 = (epsilon-1)/(epsilon+2)
k2 = (n^2-1)/(n^2+2)
ratio = 1/((k1/k2)-1) 
printf("\n Ratio of electronic to ionic polarizability is %f .\n\n\n",ratio)
// Answer in book is 1.43
