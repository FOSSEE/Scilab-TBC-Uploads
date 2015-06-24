//Chapter-4, Illustration 2, Page 163
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
T1=273;//Temperature at section 1 in K
P1=140;//Pressure at section 1 in KN/(m^2)
v1=900;//Velocity at section 1 in m/s
v2=300;//Velocity at section 2 in m/s
Cp=1.006;//Specific heat at constant pressure in kJ/kg-K
Cv=0.717;//Specific heat at constant volume in kJ/kg-K
y=1.4;//Ratio of specific heats

//CALCULATIONS
c=y/(y-1);//Ratio
R=Cp-Cv;//Universal gas constant in KJ/Kg-K
T2=T1-(((v2)^2-(v1)^2)/(2000*c*R));//Temperature at section 2 in K
DT=T2-T1;//Increase in temperature in K
P2=P1*((T2/T1)^c);//Pressure at section 2 in KN/(m^2)
DP=(P2-P1)/1000;//Increase in pressure in MN/(m^2)
IE=Cv*(T2-T1);//Increase in internal energy in kJ/kg

//OUTPUT
mprintf('Increase in temperature is %3.0f K \n Increase in pressure is %3.2f MN/(m^2) \n Increase in internal energy is %3.0f kJ/kg',DT,DP,IE)





//==============================END OF PROGRAM=================================
