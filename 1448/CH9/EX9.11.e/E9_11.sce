clc
//Initialization of variables
v=2
F=9.6485*10^4 //C/mol
E=0.2684 //V
V1=0.2699 //V
V2=0.2669 //V
T1=293 //K
T=298 //K
T2=303 //K
//calculations
Gr= -v*F*E
Sr=v*F*(V2-V1)/(T2-T1)
Hr=Gr+T*Sr
//results
printf("Gibbs enthalpy = %.2f kJ/mol",Gr/1000)
printf("\n Standard Entropy = %.1f J /K mol",Sr)
printf("\n Enthalpy = %.1f kJ/mol",Hr/1000)
