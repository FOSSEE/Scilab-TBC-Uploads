
//Variable declaration
Ef=7*1.602*10**-19;     //fermi energy(J)
h=6.63*10**-34;     //planck's constant
m=9.11*10**-31;     //mass(kg)

//Calculation
x=h**2/(8*m);
y=(3/%pi)**(2/3);
n23=Ef/(x*y);
n=n23**(3/2);       //total number of free electrons(per m**3)

//Result
printf('total number of free electrons is %0.3f     **10**28 per m**3\n',(n/10**28))
printf('answer varies due to approximating off errors\n')