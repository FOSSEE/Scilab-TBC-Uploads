//Chapter-2, Illustration 14, Page 70
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
d=0.2;//Bore in m
L=0.3;//Stroke in m
c=0.04;//Cut-off percentage
y=1.4;//Ratio of specific heats
rv=8;//Compression ratio
P1=1;//Pressure at point 1 in bar
P3=60;//Pressure at point 3 in bar
T1=298;//Temperature at point 1 in K
R=287;//Universal gas constant in J/kg
Cv=0.718;//Speific heat at constant volume in kJ/kg-K
Cp=1.005;//Speific heat at constant pressure in kJ/kg-K

//CALCULATIONS
Vs=(3.147/4)*(d^2)*L;//Stroke volume in m^3
V2=Vs/(rv-1);//Specific volume at point 2 in m^3
V3=V2;//Specific volume at point 3 in m^3
V1=V2+Vs;//Specific volume at pont 1 in m^3
V5=V1;//Specific volume at pont 5 in m^3
P2=P1*(rv^y);//Pressure at point 2 in bar
T2=T1*(rv^(y-1));//Temperature at point 2 in K
T3=T2*(P3/P2);//Temperature at point 3 in K
V4=V3+(c*(V1-V2));//Specific volume at point 4 in m^3
T4=T3*(V4/V3);//Temperature at point 4 in K
T5=T4*((V4/V5)^(y-1));//Temperature at point 5 in K
q1=(Cv*(T3-T2))+(Cp*(T4-T3));//Heat added in kJ/kg
q2=Cv*(T5-T1);//Heat rejected in kJ/kg
nth=(1-(q2/q1))*100;//Thermal efficiency
m=(P1*V1*(10^5))/(R*T1);//Mass of air supplied in kg
W=m*(q1-q2);//Workdone in kJ/cycle

//OUTPUT
mprintf('Amount of heat added is %3.1f kJ/kg \n Amount of heat rejected is %3.2f kJ/kg \n Workdone per cycle is %3.2f kJ/cycle \n Thermal efficiency is %3.2f percent',q1,q2,W,nth)







//==============================END OF PROGRAM=================================
