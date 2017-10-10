////
//Variable Declaration
I2 = 208         //Vibrational frequency, cm-1 
T = 298          //Molecular Temperature, K
c = 3.00e10      //speed of light, cm/s
h = 6.626e-34    //Planks constant, J/K
k = 1.38e-23     //Boltzman constant, J/K
//Calculation
q = 1./(1.-exp(-h*c*I2/(k*T)))
p2 = exp(-2*h*c*I2/(k*T))/q

//Results
printf("\n Partition function is %4.3f",q)

printf("\n Probability of occupying the second vibrational state n=2 is %4.3f",p2)

