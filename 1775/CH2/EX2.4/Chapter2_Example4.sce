//Chapter-2, Illustration 4, Page 58
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
rv=9.5;//Compression ratio
P1=100;//Air pressure in kPa
T1=290;//Air temperature in K
V1=600*(10^-6);//Volume of air in m^3
T4=800;//Final temperature in K
R=287;//Universal gas constan in J/kg.K
Cv=0.718;//Specific heat at constant volume in kJ/kg.K
y=1.4;//Ratio of specific heats

//CALCULATIONS
T3=T4*(rv^(y-1));//Temperature at the end of constant volume heat addition in K
P2=P1*(rv^y);//Pressure at point 2 in kPa
T2=T1*(rv^(y-1));//Temperature at point 2 in K
P3=P2*(T3/T2);//Pressure at point 3 in kPa
m=(P1*1000*V1)/(R*T1);//Specific mass in kg/s
Q=m*Cv*(T3-T2);//Heat transferred in kJ
n=(1-(1/rv^(y-1)))*100;//Thermal efficiency
Wnet=(n*Q)/100;//Net workdone in kJ
MEP=Wnet/(V1*(1-(1/rv)));//Mean effective pressure in kPa

//OUTPUT
mprintf('Maximum pressure of the cycle is %3.2f kPa \n Maximum temperature of the cycle is %3.1f K \n Amount of heat transferred is %3.2f kJ \n Thermal efficiency is %3.1f percent \n Mean effective pressure is %3.1f kPa',P3,T3,Q,n,MEP)







//==============================END OF PROGRAM=================================
