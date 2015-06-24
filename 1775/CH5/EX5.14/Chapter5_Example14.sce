//Chapter-5, Illustration 14, Page 264
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
V=0.2;//Air flow rate in (m^3)/s
P1=0.1;//Intake pressure in MN/(m^2)
P3=0.7;//Final pressure in MN/(m^2)
T1=289;//Intake temperature in K
n=1.25;//Adiabatic gas constant
N=10;//Compressor speed in rps

//CALCULATIONS
x=(n-1)/n;//Ratio
P2=sqrt(P1*P3);//Intermediate pressure in MN/(m^2)
V1=(V/N)*1000;//Total volume of LP cylinder in litres
V2=((P1*V1)/P2);//Total volume of HP cylinder in litres
W=((2*P1*V*(((P2/P1)^x)-1))/x)*1000;//Cycle power in kW

//OUTPUT
mprintf('Intermediate pressure is %3.3f MN/(m^2) \n Total volume of LP cylinder is %3.0f litres \n Total volume of HP cylinder is %3.1f litres \n Cycle power is %3.0f kW',P2,V1,V2,W)








//==============================END OF PROGRAM=================================
