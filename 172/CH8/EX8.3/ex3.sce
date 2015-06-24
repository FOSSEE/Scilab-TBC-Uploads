//example 3
//entropy change
clear
clc
C=4.184 // specific heat of water in kJ/kg-K
T1=20 //initial temperature of water in celsius
T2=90 //final temperature of water in celsius
dS1=C*log((T2+273.2)/(T1+273.2)) //change in entropy in kJ/kg-K
dS2=1.1925-0.2966 //in kJ/kg-K using steam tables
printf("\n hence,change in entropy assuming constant specific heat is dS1=%.4f kJ/kg-K.\n",dS1)
printf("\n using steam table is dS2=%.4f kJ/kg-K.\n",dS2) 