//Variable declaration
n=1;
e=1.6*10**-19;  
m=9.1*10**-31;    //mass(kg)
h=6.63*10**-34;    //planck's constant
L=2*10**-10;       //width(m)

//Calculation
E1=n**2*h**2/(8*m*e*L**2);      //energy value in g state(eV)
E2=2**2*E1;      //energy value in 2nd quantum state(eV)
E4=4**2*E1;      //energy value in 2nd quantum state(eV)

//Result
printf('energy value in 2nd quantum state is  %0.3f     \n',(E2))
printf('energy value in 4th quantum state is %0.3d eV\n ',(E4))
printf('answer varies due to approximating off errors\n')