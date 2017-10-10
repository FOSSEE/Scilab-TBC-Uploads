clear
//
//
//

//Variable declaration    
a=0.356*10^-9;       //cube edge(m)
M=12.01;         //atomic weight
N=6.023*10^26;      //avagadro number

//Calculations
n=8/a^3;     //number of atoms
m=M/N;        //mass(kg)
rho=m*n;      //density of diamond(kg/m^3)

//Result"
printf("\n number of atoms is %0.2f *10^29",n/10^29)
printf("\n density of diamond is %0.1f kg/m^3",rho)
printf("\n answer in the book is wrong")
