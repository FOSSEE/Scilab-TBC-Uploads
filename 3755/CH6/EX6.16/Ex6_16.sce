clear
//
//
//

//Variable declaration    
h=6.62*10^-34;        //planck's constant(J-sec)
mn=1.67*10^-27;    //mass of neutron(kg)
k=1.38*10^-23;      //boltzmann constant(eV/deg)
T=300;      //temperature(K)

//Calculations
E=k*T;         //energy(J)
p=sqrt(2*mn*E);      //momentum
d=h*10^10/p;         //interplanar spacing(angstrom)

//Result
printf("\n interplanar spacing is %0.2f angstrom",d)
