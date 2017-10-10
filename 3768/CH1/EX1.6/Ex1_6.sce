//Example number 1.6, Page number 12

clc;clear;
close;

//Variable declaration
dm=1.98*(10**-29)*(1/3);      //dipole moment
l=0.92*10**-10;        //bond length(m)

//Calculation
ec=dm/l;        //effective charge(coulomb)

//Result
printf( "effective charge is %.1e Coulomb",ec)
//answer given in the book is wrong
