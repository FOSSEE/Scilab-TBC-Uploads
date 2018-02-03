clear
//
//
//

//Variable declaration
L=1*10**-10    //length(m)
n3=3
m=9.11*10**-31    //mass(kg)
e=1.6*10**-19    //charge(c)
h=6.63*10**-34   //plank constant

//Calculation
E1=h**2/(8*m*e*L**2)    //g state energy(eV)

E3=n3**2*E1      //energy of 2nd excited state(eV)
E=E3-E1          //energy required to pump an electron(eV) 

//Result
printf("\n ground state energy is %0.3f  eV",E1)
printf("\n energy of 2nd excited state is %0.2f  eV",E3)
printf("\n energy required to pump an electron is %0.2f  eV",E)
printf("\n answer given in the book is wrong")
