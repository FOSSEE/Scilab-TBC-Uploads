//Example 5.1, Page number 5.28

clc;clear;close

//variable declaration
n1=1.50          //Core refractive index
n2=1.47          //Cladding refractive index

//Calculations
C_a=asin(n2/n1)        //Critical angle       
N_a=(n1**2-n2**2)**(1/2) // Numerical Aperture
A_a=asin(N_a) // degree

//Results
printf("The Critical angle = %0.1f degrees",(C_a*180/%pi))
printf("\nThe numerical aperture = %0.2f",N_a)
printf("\nThe acceptance angle = %0.1f degress",(A_a*180/%pi))
