clear
//
//
//

//Variable declaration
c=3*10**8               //velocity of light(m/sec)
e=1.6*10**-19           //charge of electron(coulomb)
Eg=1.44*e               //band gap energy(J)
h=6.626*10**-34         //planck's constant(Jsec)

//Calculation
lamda=h*c/Eg            //wavelength(m)

//Result
printf("\n wavelength is %0.0f  angstrom",lamda*10**10)
