clear
//
//
//

//Variable declaration
epsilonr=1.0000684     //dielectric constant
N=2.7*10**25   //number of atoms
epsilon0=8.85*10**-12    
E=10**6        //electric field(V/m)
Z=2
e=1.6*10**-19    //charge(coulomb)

//Calculation
alphae=epsilon0*(epsilonr-1)/N    //polarisability(Fm**2)
r=(alphae/(4*%pi*epsilon0))**(1/3)    //radius of electron cloud(m)
d=alphae*E/(Z*e)                   //displacement(m) 

//Result
printf("\n polarisability is %e  Fm**2",alphae)
printf("\n radius of electron cloud is %0.3f  *10**-11 m",r*10**11)
printf("\n answer for radius given in the book varies due to rounding off errors")
printf("\n displacement is %0.1f  *10**-16 m",d*10**16)
