//Chapter-6, Illustration 2, Page 309
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
TL=268;//Low temperature in K
TH=293;//High temperature in K
t=24;//time in hrs
C=2100;//Capacity of refrigerator in kJ/s
Tw=10;//Water temperature in oC
L=335;//Latent heat of ice in kJ/kg

//CALCULATIONS
COP=TL/(TH-TL);//Co-efficient of performance
Pmin=C/COP;//Minimum power required in kW
Qr=(4.187*(Tw-0))+L;//Heat removed from water in kJ/kg
m=C/Qr;//mass of ice formed in kg/s
W=(m*t*3600)/1000;//Weight of ice formed in tons

//OUTPUT
mprintf('Minimum power required is %3.2f kW \n Weight of ice formed in 24 hours is %3.2f tons',Pmin,W)






//==============================END OF PROGRAM=================================
