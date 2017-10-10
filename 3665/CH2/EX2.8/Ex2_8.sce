clc//
//
//

//Variable declaration
r1=1.258;     //atomic radius(angstrom)
r2=1.292;     //atomic radius(angstrom)

//Calculation
a1=4*r1/sqrt(3);       //spacing(angstrom)
n1=((1/8)*8)+1;      //number of atoms per unit cell
v1=a1^3/n1;           //volume occupied by 1 atom(m^3)
n2=(1/2*6)+(1/8*8);    //number of atoms per unit cell
a2=2*sqrt(2)*r2;   //spacing(angstrom)
v2=a2^3/n2;           //volume occupied by 1 atom(m^3)
dc=(v1-v2)*100/v1;     //change in volume(%)

//Result
printf("\n decrease of volume is %0.1f percentage"                                    ,dc)
