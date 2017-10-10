clc//
//
//

//Variable declaration
Q=2*10^-10;    //charge(C)
d=4*10^-3;     //seperation(m)
epsilon_r=3.5;
A=650*10^-6;    //area(m^2)
epsilon0=8.85*10^-12;

//Calculation
V=Q*d/(epsilon0*epsilon_r*A);      //resultant voltage(V)

//Result
printf("\n resultant voltage is %0.2f Volts",V)
