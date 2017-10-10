clc//
//
//

//Variable declaration
A=10^-6;     //area(m^2)
e=1.6*10^-19;     //charge(coulomb)
Nd=10^21;     //electron concentration(m^-3)
epsilonr=11.7;
epsilon0=8.85*10^-12;
V=10;    //potential(V)
RL=50;   //resistance(ohm)

//Calculation
Cj=(A/2)*sqrt(2*e*epsilonr*epsilon0*Nd/V);      //diode capacitance(F)
delta_fel=1/(2*%pi*RL*Cj);    //frequency bandwidth(Hz)

//Result
printf("\n diode capacitance is %0.1f pF",Cj*10^12)
printf("\n frequency bandwidth is %0.0f MHz",delta_fel*10^-6)
printf("\n answer varies due to rounding off errors")
