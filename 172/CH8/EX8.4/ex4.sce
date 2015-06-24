//example 4
//entropy change with different assumptions
clear
clc
T1=300 //initial temperature in kelvins
T2=1500 //final temperature in kelvins
P1=200 //initial pressure in kPa
P2=150 //final pressure in kPa
R=0.2598 // in kJ/kg-K
Cp=0.922 //specific heat in kJ/kg-K at constant pressure
dsT2=8.0649 //in kJ/kg-K
dsT1=6.4168 //in kJ/kg-K
dS1=dsT2-dsT1-R*log(P2/P1) //entropy change calculated using ideal gas tables
dS2=integrate('0.88/x-0.0001+0.54*x-0.33*x^2','x',0.3,1.5)-R*log(P2/P1) //entropy change calculated using empirical equation 
dS3=Cp*log(T2/T1)-R*log(P2/P1) //entropy change assuming constant specific heat in kJ/kg-K
dS4=1.0767*log(T2/T1)+0.0747 //entropy change assuming specific heat is constant at its value at 990K
printf("\n hence,change in entropy using ideal gas tables is dS1=%.4f kJ/kg-K.\n",dS1)
printf("\n hence,change in entropy using empirical equation is dS2=%.4f kJ/kg-K.\n",dS2)
printf("\n hence,change in entropy using the value of specific heat at 300K is dS3=%.4f kJ/kg-K.\n",dS3)
printf("\n hence,change in entropy assuming specific heat is constant at its value at 900K is dS4=%.4f kJ/kg-K.\n",dS4)