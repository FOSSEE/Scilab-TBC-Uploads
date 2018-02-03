clear
//
//
//

//Variable declaration
L=1*10**-10    //length(m)
n2=2
n3=3
m=9.1*10**-31    //mass(kg)
e=1.6*10**-19    //charge(c)
h=6.63*10**-34   //plank constant

//Calculation
E1=h**2/(8*m*e*L**2)    //g state energy(eV)

E2=n2**2*E1      //energy of 1st excited state(eV)
E3=n3**2*E1      //energy of 2nd excited state(eV)

//Result
printf("\n ground state energy is %0.4f  eV",E1)
printf("\n energy of 1st excited state is %0.2f  eV",E2)
printf("\n energy of 2nd excited state is %0.4f  eV",E3)
