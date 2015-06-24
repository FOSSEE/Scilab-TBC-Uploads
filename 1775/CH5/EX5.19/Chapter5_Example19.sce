//Chapter-5, Illustration 19, Page 269
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
D=0.45;//Bore in m
L=0.3;//Stroke in m
C=0.05;//Ratio of clearance volume to swept volume
P1=1;//Pressure at point 1 inn bar
T1=291;//Temperature at point 1 in K
P4=15;//Pressure at point 4 in bar
n=1.3;//Adiabatic gas constant
R=0.29;//Universal gas constant in kJ/kg-K

//CALCULATIONS
x=(n-1)/n;//Ratio
k=(P4/P1)^(1/3);//Pressure ratio
P2=k*P1;//Pressure at point 2 in bar
P3=k*P2;//Pressure at point 1 in bar
Vslp=(3.147*(D^2)*L)/4;//Swept volume of LP cylinder
V7=C*Vslp;//Volume at point 7 in m^3
V1=Vslp+V7;//Volume at point 1 in m^3
V8=V7*(k^(1/n));//Volume at point 8 in m^3
EVs=(V1-V8)*1000;//Effective swept volume in litres
T4=T1*(k^x);//Temperature at point 4 in K
t4=T4-273;//Delivery temperature in oC
DV=((P1*T4*(V1-V8))/(P4*T1))*1000;//Delivery volume per stroke in litres
W=(3*R*T1*((k^x)-1))/x;//Workdone per kg of air in kJ

//OUTPUT
mprintf('Intermediate pressures are %3.3f bar and %3.3f bar \n Effective swept volume of LP cylinder is %3.2f litres \n Temperature of air delivered per stroke is %3.1f oC \n Volume of air delivered per stroke is %3.2f litres \n Work done per kg of air is %3.1f kJ',P2,P3,EVs,t4,DV,W)











//==============================END OF PROGRAM=================================
