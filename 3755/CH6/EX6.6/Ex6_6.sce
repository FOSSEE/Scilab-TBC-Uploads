clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
m=9.1*10^-31;    //mass of electron(kg)
lamda=5896*10^-10;        //de-broglie wavelength(m)
e=1.6*10^-19;        //charge of electron(c)

//Calculations
K=h^2/(2*m*lamda^2);      //energy of electron(J)
K=K/e;               //kinetic energy of electron(eV)

//Result
printf("\n kinetic energy of electron is %0.2f *10^-6 eV",K*10^6)
