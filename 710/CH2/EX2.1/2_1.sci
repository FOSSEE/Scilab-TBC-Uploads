clc();
clear;
//To determine the lattice parameter
d=6.5*10^3;                  //density of silver bromide in Kg/m^3
m=187.8;                     //molecular weight of silver bromide
M=(4*m)/(6.022*10^26);       //mass of ion in unit cell in kg.There are 4molecules per unit cell as it is a fcc diatomic structure
//d=mass of ions in unit cell/volume of unit cell
//6.5*10^3=(1.25*10^-24)/a^3
a=((M/d)^(1/3))*10^10        //lattice parameter
printf("The lattice parameter is %f A",a);