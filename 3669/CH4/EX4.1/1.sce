
//Variable declaration
e=1.6*10**-19;  
m=9.1*10**-31;    //mass(kg)
h=6.63*10**-34;    //planck's constant
E=2000;     //energy(eV)

//Calculation
lamda=h/sqrt(2*m*E*e);     //wavelength(m)

//Result
printf('wavelength is %0.4f nm\n ',(lamda*10**9))
