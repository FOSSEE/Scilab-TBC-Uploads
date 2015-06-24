clc
clear
//Input data
m=1//Mass of water collected in kg
r=0.02//Radius of bar in m
d=0.05//Distance between the thermometers in m
T1=80+273//Temperature of the thermometer 1 in K
T2=70+273//Temperature of the thermometer 2 in K
T3=30+273//Temperature of water at the inlet in K
T4=40+273//Temperature of water at the outlet in K
t=(7*60)//Time of flow in s
S=4190//Specific heat of water in J/kg.K

//Calculations
K=(m*d*(T4-T3)*S)/(3.14*r^2*t*(T1-T2))//Thermal conductivity of the metal in W/m.K

//Output
printf('Thermal conductivity of the metal is %3.2f W/m.K',K)
