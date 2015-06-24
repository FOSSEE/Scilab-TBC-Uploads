//example 5
//entropy change
clear
clc
Cp=1.004 //specific heat at constant pressure in kJ/kg-K
R=0.287 //gas constant in kJ/kg-K
P1=400 //initial pressure in kPa
P2=300 //final pressure in kPa
T1=300 //initial temperature in K
T2=600 //final temperature in K
dS1=Cp*log(T2/T1)-R*log(P2/P1) //entropy change assuming constant specific heat
s1=6.8693 //specific entropy at T1
s2=7.5764 //specific entropy at T2
dS2=s2-s1-R*log(P2/P1) //entropy change assuming variable specific heat
printf("\n hence,entropy change assuming constant specific heat is dS1=%.4f kJ/kg-K.\n",dS1)
printf("\n and assuming variable specific heat is dS2=%.4f kJ/kg-K.\n",dS2)