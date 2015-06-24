
clear
 clc
//to find kinetic energy of radon and alpha partical


// GIVEN:
//decrease in internal energy
delta_E = 4.87//in MeV
//mass of alpha partical
mHe = 4.00//in u
//mass of radon partical
mRn = 222.0//in u

// SOLUTION:
//applying conservation of energy principle
//we get two equations
//one for ratio of kinetic energies and second for total kinetic energy
//solving two equations using matrix
A = [1 (-mHe/mRn);1 1]
b = [0;4.87]
c = A\b
//ratio of kinetic energies
KRn_by_KHe = mHe/mRn
//total kinetic energy of products
Kf = delta_E//in MeV
//kinetic energy of radon partical
K_Rn = c(1)//in  MeV
//kinetic energy of alpha partical
K_He = c(2)//in  MeV

printf ("\n\n Ratio of kinetic energies KRn_by_KHe = \n\n %.4f",KRn_by_KHe)
printf ("\n\n Total kinetic energy of products Kf = \n\n %.2f MeV",Kf)
printf ("\n\n Kinetic energy of radon partical K_Rn  = \n\n %.3f MeV",K_Rn)
printf ("\n\n Kinetic energy of alpha partical K_He  = \n\n %.2f MeV",K_He)
