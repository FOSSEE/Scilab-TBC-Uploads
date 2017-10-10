clc//
//
//

//Variable declaration
m=9.1*10^-31;     //mass of electron(kg)
h=6.626*10^-34;    //planck's constant
n1=1;
n2=2;
n3=3;
L=1*10^-10;      //side(m) 

//Calculation
E1=n1^2*h^2/(8*m*L^2);    //lowest energy of electron(joule)
E2=n2^2*h^2/(8*m*L^2);    //energy of electron in 1st state(joule)
E3=n3^2*h^2/(8*m*L^2);    //energy of electron in 2nd state(joule)

//Result
printf("\n lowest energy of electron is %0.4f *10^-17 joule",E1*10^17)
printf("\n energy of electron in 1st state is %0.3f *10^-17 joule",E2*10^17)
printf("\n energy of electron in 2nd state is %0.3f *10^-17 joule",E3*10^17)
