clc//
//
//

//Variable declaration
m=9.1*10^-31;     //mass of electron(kg)
h=6.626*10^-34;    //planck's constant
n=1;
L=4*10^-10;      //side(m) 

//Calculation
E1=n^2*h^2/(8*m*L^2);    //lowest energy of electron(joule)


//Result
printf("\n lowest energy of electron is %0.3f *10^-18 joule",E1*10^18)
printf("\n answer varies due to rounding off errors")
