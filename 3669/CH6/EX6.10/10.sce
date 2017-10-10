
//Variable declaration
N=3*10**25;    //number of atoms(per m**3)
r=0.2*10**-9;    //radius(m)
epsilon0=8.85*10**-12;
E=1;     //electric field

//Calculation
p=4*%pi*epsilon0*r**3;    //dipole moment(F m**2)
P=N*p;     //polarization(C m)
epsilonr=(P/(epsilon0*E))+1;     //dielectric constant
alpha_e=epsilon0*(epsilonr-1)/N;    //polarizability(F m**2)

//Result
printf('dipole moment is %0.3f  *10**-40 F m**2   \n',(p*10**40))
printf('polarization is %0.3f   *10**-15 C m  \n',(P*10**15))
printf('dielectric constant is %0.3f     \n',(epsilonr))
printf('polarizability is %0.3f    *10**-40 F m**2 \n',(alpha_e*10**40))