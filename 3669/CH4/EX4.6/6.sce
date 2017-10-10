//Variable declaration
n=1;
e=1.6*10**-19;  
m=9.1*10**-31;    //mass(kg)
h=6.63*10**-34;    //planck's constant
L=0.05*10**-9;       //width(m)

//Calculation
E1=n**2*h**2/(8*m*e*L**2);      //energy value in g state(eV)

//Result
printf('minimum energy is %0.3f  eV   \n',(E1))