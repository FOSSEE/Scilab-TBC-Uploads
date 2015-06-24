//Chapter-5, Illustration 18, Page 268
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
P1=1.013;//Pressure at point 1 in bar
T1=288;//Temperaturea at point 1 in K
v1=8.4;//free air delivered by compressor in m^3
P4=70;//Pressure at point 4 in bar
n=1.2;//Adiabatic gas constant
Cp=1.0035;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
x=(n-1)/n;//Ratio
P2=P1*((P4/P1)^(1/3));//LP cylinder delivery pressure in bar
P3=P2*((P4/P1)^(1/3));//IP cylinder delivery pressure in bar
r=P2/P1;//Ratio of cylinder volumes
r1=P3/P2;//Ratio of cylinder volumes
r2=r*r1;//Ratio of cylinder volumes
V3=1;//Volume at point 3 in m^3
T4=T1*((P2/P1)^x);//Three stage outlet temperature in K
QR=Cp*(T4-T1);//Heat rejected in intercooler in kJ/kg of air
W=((3*P1*100*v1*(((P4/P1)^(x/3))-1))/(x*60));//Total indiacted power in kW

//OUTPUT
mprintf('LP cylinder delivery pressure is %3.3f bar \n IP cylinder delivery pressure is %3.2f bar \n Ratio of cylinder volumes is %3.2f:%3.1f:%3.0f \n Temperature at end of each stage is %3.2f K \n Heat rejected in each intercooler is %3.1f kJ/kg of air \n Total indicated power is %3.2f kW',P2,P3,r2,r1,V3,T4,QR,W)












//==============================END OF PROGRAM=================================
