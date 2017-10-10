
//Variable declaration
epsilon0=8.85*10**-12;
epsilonr=1.0000684;      //dielectric constant of material
N=2.7*10**25;    //number of atoms(per m**3)
E=10**6;     //electric field(V/m)
e=1.6*10**-19;  
Z=2;     //atomic number

//Calculation
alpha_e=epsilon0*(epsilonr-1)/N;     //electronic polarizability(F m**2)
r=(alpha_e/(4*%pi*epsilon0))**(1/3);     //radius(m)
d=alpha_e*E/(Z*e);     //displacement(m)

//Result
printf('radius is %0.3f    *10**-11 m \n',(r*10**11))
printf('answer varies due to approximating off errors\n')
printf('displacement is %0.3f *10**-16 m    \n',(d*10**16))