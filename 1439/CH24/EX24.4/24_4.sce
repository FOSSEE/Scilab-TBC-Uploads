clc
//initialisation of variables
mli= 7.01822 //amu
mH= 1.00814 //amu
mHe= 4.00387 //amu
n=2
E= 931 //Mev/amu
//CALCULATIONS
dE= E*(-n*mHe+mH+mli)
//RESULTS
printf ('total energy of this reaction = %.2f Mev',dE)
