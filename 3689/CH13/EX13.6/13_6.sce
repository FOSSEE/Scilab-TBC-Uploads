////Variable Declaration
B = 1.45         //Magnetic field streangth, Teslas 
T = 298          //Molecular Temperature, K
c = 3.00e10      //speed of light, cm/s
h = 6.626e-34    //Planks constant, J/K
k = 1.38e-23     //Boltzman constant, J/K 
gnbn = 2.82e-26  //J/T
//Calculation
ahpbyahm = exp(-gnbn*B/(k*T))

//Results
printf("\n Occupation Number is %7.6f",ahpbyahm)

