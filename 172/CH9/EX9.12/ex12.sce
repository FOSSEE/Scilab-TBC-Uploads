//example 12
//required work input
clear
clc
Pe=150 //final pressure of air in kPa
Pi=100 //initial presure of air in kPa
k=1.4
Ti=300 //initial temperature of air in kelvis
Tes=Ti*(Pe/Pi)^((k-1)/k) //from second law
ws=1.004*(Ti-Tes) //from first law of isentropic process
n=0.7 //efficiency of automotive supercharger 
w=ws/n //real work input in kJ/kg
Te=Ti-w/1.004 //temperature at supercharger exit in K
printf("\n hence,required work input is w=%.1f kJ/kg.\n",w)
printf("\n and exit temperature is Te=%.1f K.\n",Te)