clc
//
//
//

//Variable declaration
S=2     //solar energy
EH=1400
Z=376.6

//Calculations
E=sqrt(EH*Z)
H=sqrt(EH/Z)
E0=E*sqrt(2)
H0=H*sqrt(2)

//Result
printf("\n The Amplitude of Electric field is %i V/m",E0)
printf("\n The Amplitude of Magnetic field per turn is %1.2f A-turn/m",H0)
