
//Variable declaration
n=1;
e=1.6*10**-19;  
m=9.11*10**-31;    //mass(kg)
h=6.63*10**-34;    //planck's constant
L=1*10**-10;       //width(m)

//Calculation
E1=n**2*h**2/(8*m*e*L**2);      //energy value in g state(eV)
E3=3**2*E1;      //energy value in 2nd quantum state(eV)
E=E3-E1;       //energy required to pump an electron(eV)

//Result
printf('energy required to pump an electron is %0.3f  eV   \n',(E))
printf('answer varies due to approximating off errors\n')