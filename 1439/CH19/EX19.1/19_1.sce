clc 
//initialisation of variables
Na= 1
Nb= 1
Nc= 1
Na1= 2
Nb1= 1
Nc1= 0
Na2= 3
Nb2= 0
Nc2= 0
//CALCULATIONS
Wabc= factorial(Na+Nb+Nc)/(factorial(Na)*factorial(Nb)*factorial(Nc))
Waab= factorial(Na1+Nb1+Nc1)/(factorial(Na1)*factorial(Nb1)*factorial(Nc1))
Waaa= factorial(Na2+Nb2+Nc2)/(factorial(Na2)*factorial(Nb2)*factorial(Nc2))
//RESULTS
printf ('Wabc = %.f ',Wabc)
printf ('\n Waab = %.f ',Waab)
printf ('\n Waaa = %.f ',Waaa)
