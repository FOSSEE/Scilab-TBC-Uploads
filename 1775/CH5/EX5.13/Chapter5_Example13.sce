//Chapter-5, Illustration 13, Page 262
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
V=16;//Volume of air compresssed in m^3
P1=1;//Pressure at point 1 in bar
P3=10.5;//Pressure at point 3 in bar
T1=294;//Temperature at point 1 in K
Tc=25;//Temperature of cooling water in oC
n=1.35;//Adiabatics gas constant
R=0.287;//Universal gas constant in kJ/kg-K
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K
Cw=4.187;//Specific heat of water in kJ/kg-K

//CALCULATIONS
x=(n-1)/n;//Ratio
P2=sqrt(P1*P3);//Pressure at point 2 in bar
W1=(2*P1*100*V*(((P2/P1)^x)-1))/(x*60);//Indicated power of compressor from P1 to P2 in kW
W2=(P1*100*V*(((P3/P1)^x)-1))/(x*60);//Indicated power of compressor from P1 to P3 in kW
T4=T1*((P2/P1)^x);//Maximum temperature for two stage compression in K
T2=T1*((P3/P1)^x);//Maximum temperature for single stage compression in K
m=(P1*100*V)/(R*T1);//Mass of air compressed in kg/min
Q=m*Cp*(T4-T1);//Heat rejected by air in kJ/min
mc=Q/(Cw*Tc);//Mass of cooling water in kg/min

//OUTPUT
mprintf('Minimum indicated power required for 2 stage compression is %3.1f kW \n Power required for single stage compression is 18 percent more than that for two stage compression with perfect intercooling \n Maximum temperature for two stage compression is %3.1f K \n Maximum temperature for single stage compression is %3.1f K \n Heat rejected by air is %3.1f kJ/min \n Mass of cooling water required is %3.1f kg/min',W1,T4,T2,Q,mc)














//==============================END OF PROGRAM=================================
