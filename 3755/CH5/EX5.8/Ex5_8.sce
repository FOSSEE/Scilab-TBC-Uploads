clear
//
//
//

//Variable declaration    
e=1.6*10^-19;     //charge(coulomb)
m=9*10^-31;       //mass(kg)
h=6.62*10^-34;    //plank's constant(Js)
rho=970;     //density(kg/m^3)
N0=6.02*10^26;   //avagadro number
A=23;      //atomic weight

//Calculations
n=rho*N0/A;       //concentration(electrons/m^3)
ef=(h^2/(8*m))*(3*n/%pi)^(2/3);     //fermi energy(J)
ef=ef/e;           //fermi energy(eV)

//Result
printf("\n fermi energy is %0.3f eV",ef)
printf("\n answer varies due to rounding off errors")
