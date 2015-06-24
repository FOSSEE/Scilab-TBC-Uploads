clc
clear
//Input data
Ve=2700//Jet exit velocity in m/s
Vf=1350//Forward flight velocity in m/s
m=78.6//Propellant consumption in kg/s

//Calculations
T=((m/9.81)*(Ve-Vf))//Thrust in kg
TH=((T*Vf)/75)/10^5//Thrust horse power in HP*10^5
pn=(2/(1+(Ve/Vf)))*100//Propulsive efficiency in percent

//Output
printf('(i) Thrust is %3.0f kg \n (ii) Thrust horse power is %3.3f*10^5 H.P \n (iii) Propulsive efficiency is %3.1f percent',T,TH,pn)
