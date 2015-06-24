//example 5.28

clear;
clc;

//Given:
P1=0.016;//Vapour pressure of pure ethanol at 273K[bar]
P2=0.470;//Vapour pressure of pure ethanol at 333K[bar]
T1=273;//initial temperature [K]
T2=333;//final temperature[K]
R=8.314;//Universal gas constant[J/K/mol]
P=1.01;//vapour pressure at normal boiling point[bar]


//To find the molar enthalpy of vapourization
x=(T2^-1)-(T1^-1);
He=-R*0.001*log(P2/P1)/x;//molar enthalpy of vaporization[J/mol]
t=(T2^-1)-(R*0.001*log(P/P2)/He);
T=(t^-1)-273;//normal boiling point [C]
printf("The molar enthalpy of vapourization is %f J/mol",He);
printf("\n\nThe normal boiling point for pure ethanol is %f C",T);
