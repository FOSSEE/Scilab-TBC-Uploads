//calculation of atomic radius

clear;
clc;

printf("\t Example 11.3\n");

atoms=8*1/8+6*1/2;//atoms in a cell
d=19.3;//density, g/cc
Au=197;//mol mass of Au, g
NA=6.022*10^23;//avogadro no.
m=atoms*Au/NA;//mass of 1 cell, g
V=m/d;//volume, cc
a=V^(1/3);//edge length, cm
r=a/sqrt(8)/100;//radius in m

printf("\t the atomic radius of Au is : %4.0f pm\n",r*10^12);

//End
