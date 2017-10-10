
//Variable declaration
e=1.6*10**-19;  
m=9.1*10**-31;    //mass(kg)
h=6.626*10**-34;    //planck's constant
lamda=1.66*10**-10;    //wavelength(m)

//Calculation
v=h/(m*lamda);     //velocity(m/s)
E=h**2/(2*m*e*lamda**2);    //kinetic energy(eV)

//Result
printf('velocity is %0.3f   *10**4 m/s  \n',(v/10**4))
printf('answer varies due to approximating off errors\n')
printf('kinetic energy is %0.3f  eV   \n',(E))