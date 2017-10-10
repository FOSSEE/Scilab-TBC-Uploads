clc//
//
//

//Variable declaration
Bs=0.65;      //magnetic induction(wb/m^2)
d=8906;       //density(kg/m^3)
n=6.025*10^26;     //avagadro number
mew0=4*%pi*10^-7;
w=58.7;     //atomic weight(kg)

//Calculation
N=d*n/w;     //number of nickel atoms(per m^3)
mew_m=Bs/(N*mew0*9.27*10^-24);     //magnetic moment(mewB)

//Result
printf("\n magnetic moment is %0.2f mewB",mew_m)
