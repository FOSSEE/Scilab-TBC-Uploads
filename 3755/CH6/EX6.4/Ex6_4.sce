clear
//
//
//

//Variable declaration    
h=6.60*10^-34;        //planck's constant(J-sec)
m=1.674*10^-27;    //mass of proton(kg)
lamda=10^-10;        //de-broglie wavelength(m)
e=1.6*10^-19;        //charge of electron(c)

//Calculations
E=h^2/(2*m*lamda^2);      //energy of neutron(J)
E=E/e;               //energy of neutron(eV)

//Result
printf("\n energy of neutron is %0.2f *10^-2 eV",E*10^2)
