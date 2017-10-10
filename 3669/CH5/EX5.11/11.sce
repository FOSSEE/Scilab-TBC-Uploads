
//Variable declaration
ne=1;    //number of electrons
M=107.9;   //atomic weight
D=10500;   //density(kg/m**3)
Na=6.025*10**26;   //avagadro number(per k mol)
m=9.11*10**-31;     //mass(kg)
h=6.63*10**-34;     //planck's constant

//Calculation
n=ne*Na*D/M;    
x=h**2/(8*m);
y=(3/%pi)**(2/3);
Ef=x*y*n**(2/3);       //fermi energy(eV)   

//Result
printf('fermi energy is %0.3f  *10**-19 J   \n',(Ef*10**19))