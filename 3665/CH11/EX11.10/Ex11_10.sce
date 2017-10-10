clc//
//
//

//Variable declaration
d=7.8*10^3;    //density(kg/m^3)
n=6.025*10^26;    //number of atoms
w=157.26;     //atomic weight(kg)
mewm=9.27*10^-24;
mew=7.1*mewm;
mew0=4*%pi*10^-7;

//Calculation
N=d*n/w;       //number of atoms
mew_B=N*mew/10^3;     //magnetic moment per gram(Am^2)
Bs=N*mew0*mew;

//Result
printf("\n magnetic moment per gram %0.3f Am^2",mew_B)
printf("\n magnetic moment per gram is %0.4f Wb/m^2",Bs)
printf("\n answer given in the book varies due to rounding off errors")
