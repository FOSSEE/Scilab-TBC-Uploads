clear
//
//
//

//Variable declaration    
k=7;
epsilon0=8.9*10^-12;        //relative permeability(F/m)
V0=100;        //potential difference(V)
d=10^-2;      //displacement(m)

//Calculations
E0=V0/d;       //electric field intensity(volt/m)
E=E0/k;     //electric field(N/C)
D=k*E*epsilon0;       //electric displacement(C/m^2)
p=epsilon0*E*(k-1);    //dipole moment(coul-metre)

//Result
printf("\n electric field is %0.2f *10^3 volt/m",E/10^3)
printf("\n electric displacement is %e C/m^2",D)
printf("\n dipole moment is %0.1f *10^-8 C/m^2",p*10^8)
