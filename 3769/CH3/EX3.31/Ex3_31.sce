clear
//Given
Z=79
e=1.6*10**-19
e0=8.854*10**-12
R=6.2*10**-15

//Calculation
//
q=Z*e
E=q/(4.0*%pi*e0*R**2)
b=E/4.0

//Result
printf("\n (i) The magnitude of the electric field at the surface of nucleus is  %0.0f *10**21 N/C",E*10**-21)
printf("\n (ii) The magnitude of the electric field at a distance 2R from the centre of the nucleus is  %0.2f  *10**21 N/C",b*10**-21)
