clc//
//
//

//Variable declaration
a=0.356*10^-9;       //cube edge(m)
m=12.01;    //atomic weight of carbon
N=6.023*10^26;    //avagadro number

//Calculation
n=8/a^3;     //number of atoms per m^3
M=m/N;
d=M*n;       //density of diamond(kg/m^3)

//Result
printf("\n number of atoms per m^3 is %0.2f *10^29",n/10^29)
printf("\n density of diamond is %0.1f kg/m^3",d)
printf("\n answer varies due to rounding off errors")
