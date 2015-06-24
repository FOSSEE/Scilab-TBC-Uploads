clc
clear
//Input data
q=2250//Heat supplied per sec in kcal
//Input data from Fig. 25.34 from page no. 652
T1=200//Temperature in K
T2=100//Temperature in K
T3=625//Temperature in K
T4=550//Temperature in K
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
Wc=(2*Cp*(T1-T2))//Work of compression in kcal/kg of air
We=(2*Cp*(T3-T4))//Work of expansion in kcal/kg of air
NW=(Wc-We)//Net output in kcal/kg of air
qi=(2*Cp*(T3-T4))//Heat input in kcal/kg of air
nth=(NW/qi)*100//Thermal efficiency in percent
rf=(q/qi)//Rate of flow of working substance in kg/sec
O=(NW*rf*427)/75//Total output in H.P

//Output
printf('Output is %3.0f H.P \n Thermal efficiency is %3.1f percent',O,nth)
