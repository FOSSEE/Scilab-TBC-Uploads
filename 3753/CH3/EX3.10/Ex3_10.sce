//Example number 3.10, Page number 3.35


clc;clear;close

// Variable declaration
H0=6.5*10**4           // (ampere/metre)
T=4.2                  // K
Tc=7.18                // K
r=0.5*10**-3

// Calculations
Hc=H0*(1-(T/Tc)**2) // unitless
Ic=(2*%pi*r)*Hc // A
A=%pi*r**2 // m^2
Jc=Ic/A                // Critical current density

// Result
printf("Hc = %0.4e",Hc)
printf("\nCritical current density,Jc = %0.2e ampere/metre^2",Jc)
