//Chapter 3, Exmaple 8, page 106
//Energy of free electron
clc
clear
//Using equation 3.3
mv2 = (3/2*1.38*10**-21*293) // 1/2*m*v^2
E = mv2*10**38/1.6*10**-19
printf("\n1/2*m*v^2 = %e J",mv2)
printf("\nEnergy of free electron = %f eV",E)

//Answers may vary due to round off error
