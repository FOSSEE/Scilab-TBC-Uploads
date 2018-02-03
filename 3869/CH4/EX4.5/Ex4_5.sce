clear
//
//
//

//Variable declaration
c=3*10**8               //velocity of light(m/sec)
e=1.6*10**-19           //charge of electron(coulomb)
lamda=6943*10**-10      //wavelength(m)
h=6.6*10**-34           //planck's constant(Jsec)
kb=1.38*10**-23         //boltzmann constant
T=300                   //temperature(K)      

//Calculation
Uv=h*c/(e*lamda)        //energy(eV)
Uvj=Uv*e                //energy(J)
x=Uvj/(kb*T)
NbyN0=exp(x)       //relative population of 2 states

//Result
printf("\n relative population of 2 states is %0.0f  *10**29",NbyN0*10**-29)
printf("\n answer given in the book is wrong")
