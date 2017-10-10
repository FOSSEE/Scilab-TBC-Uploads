clear
//
//
//

//Variable declaration    
epsilonr=1.0000684;       //dielectric constant
N=2.7*10^25;     //number of atoms
X=1/(9*10^9);
E=10^6;        //electric field(V/m)
Z=2;     //atomic number
e=1.6*10^-19;         //electron charge(coulomb)

//Calculations
R=((epsilonr-1)/(4*%pi*N))^(1/3);     //radius of electron cloud(m)
x=X*E*R^3/(Z*e);         //displacement(m)

//Result
printf("\n radius of electron cloud is %0.2f *10^-11 m",R*10^11)
printf("\n displacement is %0.5f *10^-17 m",x*10^17)
