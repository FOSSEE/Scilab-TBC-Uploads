clc
//initialisation of variables
v= 299.8 //V
e= 4.802*10^-10 //ev
h= 6.624*10^-27 //ergs sec
c= 3*10^10 //cm/sec
//CALCULATIONS
E= e/v
l= h*c*10^8/(2*E)
//RESULTS
printf (' Wavelength = %.f cm',l+7)
