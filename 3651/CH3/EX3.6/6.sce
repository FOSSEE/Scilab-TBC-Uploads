
//Variable declaration
E=2*1000*1.6*10**-19       //in joules
m=9.1*10**-31
h=6.6*10*10**-34

//Calculations
p=sqrt(2*m*E)
lamda= h/p

//Result
printf('Momentum%0.3f   \n ',(p*10**23))
printf('de Brolie wavelength =%0.3f *10**-11 m  \n ',(lamda*10**10))