
//Variable declaration
h=6.63*10**-34;      //planck's constant
c=3*10**8;      //velocity of light(m/s)
Eg=1.44;     //energy gap(eV)
e=1.6*10**-19; 

//Calculation
lamda=h*c/(Eg*e);    //wavelength(m)

//Result
printf('wavelength is %0.3f   angstrom  \n',(lamda*10**10))