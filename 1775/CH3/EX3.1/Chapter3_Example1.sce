//Chapter-3, Illustration 1, Page 139
//Title: Internal Combustion Engines
//=============================================================================
clc
clear

//INPUT DATA
d=200;//diameter of cylinder in mm
L=300;//stroke of cylinder in mm
Vc=1.73;//Clearance volume in litres
imep=650;//indicated mean effective pressure in kN/(m^2)
g=6.2;//gas consumption in (m^3)/h
CV=38.5;//Calorific value in MJ/(m^3)
y=1.4;//Ratio of specific heats
N=150;//No. of firing cycles per minute

//CALCULATIONS
Vs=((3.1415/4)*(d^2)*L)*(10^-6);//Stroke volume in litres
Vt=Vs+Vc;//Total volume in litres
rv=(Vt/Vc);//Compression ratio
n=(1-(1/rv^(y-1)))*100;//Air standard efficiency
IP=imep*(Vs*10^-3)*(N/60);//Indicated power in kW
F=(g*CV*1000)/3600;//Fuel energy input in kW
nT=(IP/F)*100;//Indicated thermal efficiency

//OUTPUT
mprintf('Air Standard Efficiency is %3.1f percent \n Indicated Power is %3.1f kW \n Indicated thermal efficiency is %3.0f percent',n,IP,nT)




//==============================END OF PROGRAM=================================
