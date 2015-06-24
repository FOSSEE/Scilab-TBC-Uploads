//Chapter 3, Exmaple 2, page 104
//Kinetic energy of oxygen molecule
clc
clear
//from Eq.3.2
G = (2*10**-3/32)*(8314*298*1.01*10**5)*10**-10
printf("\nG = %e m^3\n",G) // Answer is is wrong in the text 
//From equation 3.1
mv2 = 3/2*1.01*10**5 // 1/2*m0*v^2
KE = mv2*G//total transalational K.E
printf("K.E = %f J\n",KE)
//Answer may varry due to round off error
