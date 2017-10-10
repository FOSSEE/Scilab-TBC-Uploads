clear
//
//
//

//Variable declaration
kb=1.38*10^-23;      //boltzmann constant
T=300;      //temperature(K)
m=6;
Eg=0.7;     //band gap(eV)

//Calculation
x=3*kb*T*log(m)/4;
EF=(Eg/2)+x;            //position of Fermi level(eV)

//Result
printf("\n position of Fermi level is %0.3f eV",EF)
printf("\n answer in the book is wrong")
