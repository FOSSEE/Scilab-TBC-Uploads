clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;        //relative permeability(F/m)
chi=35.4*10^-12;     //electric susceptibility(coul^2/nt-m^2)

//Calculations
k=1+(chi/epsilon0);      //dielectric constant
epsilon=epsilon0*k;      //permittivity(coul^2/nt-m^2) 

//Result
printf("\n dielectric constant is %0.3f ",k)
printf("\n permittivity is %0.2f *10^-12 coul^2/nt-m^2",epsilon*10^12)
