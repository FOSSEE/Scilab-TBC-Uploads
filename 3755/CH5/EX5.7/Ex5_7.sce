clear
//
//
//

//Variable declaration    
e=1.6*10^-19;     //charge(coulomb)
m=9*10^-31;       //mass(kg)
h=6.624*10^-34;    //plank's constant(Js)
n=5.86*10^28;      //density(electrons/m^3)
k=8.6*10^-5;

//Calculations
ef=(h^2/(8*m))*(3*n/%pi)^(2/3);     //energy(J)
ef=ef/e;           //energy(eV)
theta_f=ef/k;      //maximum kinetic energy(K)

//Result
printf("\n maximum kinetic energy is %0.2f *10^4 K",theta_f/10^4)
