clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;        //relative permeability(F/m)
E=100;               //electric field(N/C)
epsilonr=1.000074;   //dielectric constant
n=2.68*10^27;      //density

//Calculations
p=epsilon0*E*(epsilonr-1)/n;    //dipole moment(coul-metre)

//Result
printf("\n dipole moment is %0.4f *10^-41 C/m^2",p*10^41)
printf("\n answer in the book is wrong")
