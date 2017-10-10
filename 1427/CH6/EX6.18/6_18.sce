//ques-6.18
//Calculating enthalpy change and free energy change and entropy change for the given cell
clc
E1=0.6753;//emf at 298 K
E2=0.6915;//emf at 273 K
n=2;//electrons involved
T=298;//temperature (in K)
z=(E1-E2)/T;//change in emf w.r.t temperature
H=n*96500*(-E1+T*z);
G=-n*96500*E1;
S=(H-G)/T;
printf("The enthalpy change is %.3f kJ, free energy change is %.3f kJ and entropy change is %.2f J/K.",H/1000,G/1000,S);
