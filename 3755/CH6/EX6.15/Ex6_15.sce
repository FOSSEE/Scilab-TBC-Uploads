clear
//
//
//

//Variable declaration    
h=6.60*10^-34;        //planck's constant(J-sec)
m=1.67*10^-27;    //mass of neutron(kg)
k=8.6*10^-5;      //boltzmann constant(eV/deg)
e=1.6*10^-19;        //charge of electron(c)
T=300;      //temperature(K)

//Calculations
lamda=h*10^10/sqrt(2*m*k*e*T);     //wavelength of thermal neutron(angstrom)

//Result
printf("\n wavelength of thermal neutron is %0.3f angstrom",lamda)
