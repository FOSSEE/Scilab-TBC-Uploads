clc//
//
//

//Variable declaration
d=2*10^-3;     //seperation(m)
epsilon_r=6;
V=10;      //voltage(V)
epsilon0=8.85*10^-12;

//Calculation
E=V/d;
D=epsilon0*epsilon_r*E;      //dielectric displacement(C m^-2)

//Result
printf("\n dielectric displacement is %0.1f *10^-9 C m^-2",D*10^9)
