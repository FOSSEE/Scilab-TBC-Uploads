clc();
clear;
//Given :
lambda = 6058;// Wavelength of light in A
deltalambda1 = 0.01; // line width for a krypton source in A
deltalambda2 = 0.00015; // line width for a laser source in A
// The maximum number of fringes is given by n_max = lambda/deltalambda
// (a) For a krypton source :
n_max1 = lambda/deltalambda1 ;
// (b) For a laser source :
n_max2 = lambda/deltalambda2;
printf("The maximum number of fringes observable are :\n\n");
printf("(a) For a krypton source : %d \n\n",n_max1);
printf("(b) For a laser source : %d \n\n",n_max2);

 
