clc//
//
//

//Variable declaration
IPk=4.1;    //IP of K(eV)
EACl=3.6;    //EA of Cl(eV)
e=1.602*10^-19;   //charge of electron(c)
onebyepsilon0=9*10^9;

//Calculation
deltaE=IPk-EACl;
Ec=deltaE;      //energy required(eV)
R=e*onebyepsilon0/deltaE;     //seperation(m)

//Result
printf("\n energy required is %0.3f eV",Ec)
printf("\n seperation is %0.2f nm",R*10^9)
