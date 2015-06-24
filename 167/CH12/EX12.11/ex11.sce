//example 11
//dh and ds of Oxygen at High Pressures
clear
clc
T1=220 //Initial Temp. in K
P1=5 //Initial Pressure in MPa 
T2=300 //Final Temp.in K 
P2=10// Final Pressure in MPa
h2ideal=8736//in kJ/mol
h1ideal=6404 //in kJ/mol
Ru=8.314 //Universal Gas constant in kJ/kmol-K
s2o=205.213 //in kJ/kmol-K
s1o=196.1712 //in kJ/kmol-K
Tcr=154.8 //Critical Temp. in K
Pcr=5.08 //Critical Pressure in MPa
Tr1=T1/Tcr //Reduced initial temp. 
Pr1=P1/Pcr //Reduced initial pressure 
Tr2=T2/Tcr//Reduced final Temp.
Pr2=P2/Pcr //Reduced Final Pressure
Zh1=0.53
Zs1=0.25
Zh2=0.48
Zs2=0.20
dhi=h2ideal-h1ideal// Enthalpy change by assuming ideal gas behaviour
dhn=dhi-Ru*Tcr*(Zh2-Zh1) //Enthalpy change by accounting for deviation from ideal gas behaviour
dsi=s2o-s1o-Ru*log(P2/P1)// Entropy change by assuming ideal gas behaviour
dsn=dsi-Ru*(Zs2-Zs1)//Entropy change by accounting for deviation from ideal gas behaviour
printf(" Hence, by assuming ideal gas behaviour, enthalpy change is = %.0f kJ/kmol ",dhi);
printf("and entropy change is = %.2f kJ/kmol-K. ",dsi);
printf("\n By accounting for deviation from ideal gas behaviour, enthalpy change is=%.0f kJ/kmol ",dhn);
printf("and entropy change is = %.2f kJ/kmol-K. \n",dsn);