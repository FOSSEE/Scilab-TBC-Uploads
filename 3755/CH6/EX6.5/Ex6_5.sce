clear
//
//
//

//Variable declaration    
h=6.62*10^-34;        //planck's constant(J-sec)
m=9.1*10^-31;    //mass of electron(kg)
lamda=3*10^-12;        //de-broglie wavelength(m)
e=1.6*10^-19;        //charge of electron(c)

//Calculations
E=h^2/(2*m*lamda^2);      //energy of electron(J)
E=E/e;               //energy of electron(eV)

//Result
printf("\n energy of electron is %0.1f eV",E)
printf("\n answer in the book is wrong")
