clear
//
//
//

//Variable declaration
L=2*10**-10    //length(m)
n2=2
n4=4
m=9.1*10**-31    //mass(kg)
e=1.6*10**-19    //charge(c)
h=6.63*10**-34   //plank constant

//Calculation
E1=h**2/(8*m*e*L**2)    //minimum energy(eV)
E2=n2**2*E1      //energy of 1st excited state(eV)
E4=n4**2*E1      //energy of 2nd excited state(eV)

//Result
printf("\n ground state energy is %0.2f  eV",E1)
printf("\n energy of 1st excited state is %0.3f  eV",E2)
printf("\n energy of 2nd excited state is %0.2f  eV",E4)
printf("\n answers for energy of 1st and 2nd states given in the book are wrong")
