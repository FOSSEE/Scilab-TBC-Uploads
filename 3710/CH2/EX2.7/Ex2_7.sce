//Example 2.7, Page Number 78
//Junction Capacitance Calculation
clc;

V=-4 //Reverse Bias voltage in volts
nd=4*(10**21) //in per meter cube
Vo=0.8//in volts
A=4*(10**-7) //Junction Area in meter square
er=11.8 //Relative permittivity
e=1.6*(10**-19) //Charge of an Electron in coulombs
eo=8.85*(10**-12) //Absolute permittivity in farads per meter

//By equation 2.63
Cj=(A/2)*sqrt((2*eo*er*e*nd)/(Vo-V))

mprintf("The Junction Capacitance is %.2e pF",Cj)
