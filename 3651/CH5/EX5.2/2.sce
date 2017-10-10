//Variable declaration
epsilon0=8.84*10**-12;
R=0.55*10**-10;    //radius(m)
N=2.7*10**25;      //number of atoms

//Calculation
alpha_e=4*%pi*epsilon0*R**3;    //polarisability of He(farad m**2)
epsilonr=1+(N*alpha_e/epsilon0);      //relative permittivity

//Result
printf('polarisability of He is  %0.3f *10**-40 farad m**2\n',(alpha_e*10**40))
printf('relative permittivity is  %0.3f \n',(epsilonr))
printf('answer varies due to ing off errors')