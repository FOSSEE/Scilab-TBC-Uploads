clear
//
//
//

//Variable declaration    
k=1.000074;
epsilon0=8.85*10^-12;        //relative permeability(F/m)
E=1;               //electric field(N/C)
n=2.69*10^25;     //molecular density

//Calculations
p=epsilon0*E*(k-1)/n;    //dipole moment(coulx metre)

//Result
printf("\n dipole moment is %0.2f *10^-41 coul x metre",p*10^41)
