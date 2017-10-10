
//Variable declaration
a=3.5;     //lattice constant(angstrom)

//Calculation
A=a**2;
N=10**7*10**7/A;    //number of atoms per sq. mm

//Result
printf('number of atoms per sq. mm is %0.3f  *10**12   \n',(N/10**12))