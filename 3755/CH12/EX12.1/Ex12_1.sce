clear
//
//
//

//Variable declaration
e=1.6*10^-19;     //charge(coulomb)
c=3*10^8;   //velocity of matter wave(m/s)
h=6.62*10^-34;    //plank's constant(Js)
lamda=6328*10^-10;    //wavelength(m)

//Calculation
E=h*c/(lamda*e);    //energy of photon(eV)
p=h/lamda;      //momentum of photon(kg m/s)

//Result
printf("\n energy of photon is %0.2f eV",E)
printf("\n momentum of photon is %0.2f *10^-27 kg m/s",p*10^27)
