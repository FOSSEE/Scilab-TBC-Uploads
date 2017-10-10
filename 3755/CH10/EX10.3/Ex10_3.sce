clear
//
//
//

//Variable declaration    
k=5;
epsilon0=8.86*10^-12;        //relative permeability(F/m)
D=5*10^-12;        //electric displacement(C/m^2)
V=0.5*10^-6;

//Calculations
E=D/(k*epsilon0);     //electric field(N/C)
P=D*(1-(1/k));      //polarisation(C/m^2)
dm=P*V;        //induced dipole moment(cm)

//Result
printf("\n electric field is %e N/C",E)
printf("\n polarisation is %e C/m^2",P)
printf("\n induced dipole moment is %e cm",dm)
