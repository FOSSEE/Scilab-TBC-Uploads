// Implementation of example 7.5
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

// T for temperature,dS is change in entropy,p for pressure,V is volume
n=1.3
p1=500 // kPa
V1=0.2 // m^3
V2=0.05 // m^3
// the fluid is undergoing reversible adiabatic compression according to the law p*(V^1.3)=constant
p2=p1*(V1/V2)^1.3;
dH=[n*(p2*V2-p1*V1)]/(n-1);
dU=dH-(p2*V2-p1*V1);
dS=0;
Q12=0;
W12=-dU;
printf("change in enthalpy = %.2f kJ \n change in entropy = %.2f  \n change in internal energy = %.2f kJ \n heat transfer = %.2f \n work transfer = %.2f kJ",dH,dS,dU,Q12,W12);
// end