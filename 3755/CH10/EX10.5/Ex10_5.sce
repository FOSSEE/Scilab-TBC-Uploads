clear
//
//
//

//Variable declaration    
k=1.000134;
epsilon0=8.85*10^-12;        //relative permeability(F/m)
E=90000;               //electric field(N/C)
N=6.023*10^26;       //avagadro number

//Calculations
n=N/22.4;
p=epsilon0*E*(k-1)/n;    //dipole moment(coul-metre)
alpha=p/E;    //atomic polarizability(coul-m^2/volt)

//Result
printf("\n dipole moment is %0.2f *10^-36 coul-metre",p*10^36)
printf("\n atomic polarizability is %0.1f *10^-41 coul-m^2/volt",alpha*10^41)
