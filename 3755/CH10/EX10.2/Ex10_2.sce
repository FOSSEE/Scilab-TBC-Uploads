clear
//
//
//

//Variable declaration    
k=4;
epsilon0=9*10^-12;        //relative permeability(F/m)
E=10^6;         //electric field(V/m)

//Calculations
D=k*epsilon0*E;     //electric displacement(C/m^2)
P=epsilon0*E*(k-1);      //polarisation(C/m^2)

//Result
printf("\n electric displacement is %0.0f *10^-6 C/m^2",D*10^6)
printf("\n polarisation is %0.0f *10^-6 C/m^2",P*10^6)
