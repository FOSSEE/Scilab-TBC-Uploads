clc//
//
//

//Variable declaration
n1=1;n2=1;n3=1;
h=6.62*10^-34;    //planck's constant
m=8.5*10^-31;     //mass(kg)
L=10^-11;      //side(m) 

//Calculation
E111=h^2*(n1^2+n2^2+n3^2)/(8*m*1.6*10^-19*L^2);    //lowest energy of electron(eV)
E112=6*h^2/(8*m*1.6*10^-19*L^2);      //value of E112(eV)
E121=E112;      //value of E121(eV)
E211=E112;      //value of E211(eV)
E122=9*h^2/(8*m*1.6*10^-19*L^2);     //value of E122(eV)
E212=E122;      //value of E212(eV)
E221=E122;      //value of E221(eV)

//Result
printf("\n lowest energy of electron is %0.3f *10^4 eV",E111/10^4)
printf("\n value of E112, E121, E211 is %0.4f *10^4 eV",E121/10^4)
printf("\n value of E122, E212, E221 is %0.3f *10^4 eV",E122/10^4)
