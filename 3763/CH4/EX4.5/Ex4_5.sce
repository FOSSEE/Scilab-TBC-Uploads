clear
//
//
//

//Variable declaration
h=6.625*10**-34     //planck's constant
c=3*10**8     //velocity of light(m/s)
lamda0=3000*10**-10   //wavelength(m)
e=1.6*10**-19    //charge(coulomb)
lamda=2536*10**-10      //wavelength(m)

//Calculation
hf0=c*h/(lamda0*e)    //work function(eV)
E=c*h*((1/lamda)-(1/lamda0))/e            //maximum kinetic energy(eV)

//Result
printf("\n work function is %0.2f  eV",hf0)
printf("\n maximum kinetic energy is %0.3f  eV",E)
printf("\n answer varies due to rounding off errors")
