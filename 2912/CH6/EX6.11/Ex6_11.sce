//chapter 6
//example 6.11
//Calculate average energy of free electron at 0K and corresponding temperature for a classical particle (an ideal gas)
//page 150
clear;
clc;
//given
E_F=5.51; // in eV (Fermi energy in Silver)
k=1.38E-23; // in J/K (Boltzmann's constant)
e=1.6E-19; // in C (charge of electron)
//calculate
// part-(a)
Eo=(3/5)*E_F; // calculation of average energy of free electron at 0K
printf('\n\nThe average energy of free electron at 0K is \tEo=%.3f eV',Eo);
// part-(b)
Eo=Eo*e; // changing unit from eV to J
// Since for a classical particle E=(3/2)*k*T
// therefroe we have
T=(2/3)*Eo/k; // calculation of temperature for a classical particle (an ideal gas)
printf('\n\nThe temperature at which a classical particle have this much energy is \t T=%1.3E K',T);
