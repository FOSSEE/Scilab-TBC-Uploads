clc//
//
//

//Variable declaration
n1=1;n2=1;n3=1;
h=6.62*10^-34;    //planck's constant
m=9.1*10^-31;     //mass(kg)
L=0.1*10^-9;      //side(m) 

//Calculation
E1=h^2*(n1^2+n2^2+n3^2)/(8*m*1.6*10^-19*L^2);    //lowest energy of electron(eV)

//Result
printf("\n lowest energy of electron is %0.1f eV",E1)
