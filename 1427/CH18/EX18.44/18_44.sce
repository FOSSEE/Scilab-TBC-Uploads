//ques-18.44
//Calculating enthalpy of the reaction and free energy change and entropy change at 925 K
clc
T1=925; T2=1000;//temperature (in K)
K1=18.5; K2=9.25;//equikibrium constant
H=(log10(K2/K1)*2.303*8.314*T1*T2)/(T2-T1);//enthalpy (in J/mol)
G=-2.303*8.314*T1*log10(K1);
S=(H-G)/T1;
printf("The enthalpy of the reaction is %.1f kJ/mol, free energy change is %.1f kJ/mol and entropy change is %.1f J/K/mol.",H/1000,G/1000,S);
