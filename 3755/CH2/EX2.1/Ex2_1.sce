clear
//
//
//

//Variable declaration    
M=28;     //atomic weight of Si
N=6.023*10^23;      //avagadro number
a=5.3*10^-10;      //lattice constant(m)
n=4;

//Calculations
V=a^3;          //volume(m^3)
m=M/(N*10^3);           //mass(kg)
rho=n*m/V;       //volume density(kg/m^3)

//Result
printf("\n volume density is %e kg/m^3",rho)
printf("\n answer in the book is wrong")
