//Chapter-3, Illustration 3, Page 141
//Title: Internal Combustion Engines
//=============================================================================
clc
clear

//INPUT DATA
n=6;//No. of cylinders
d=0.61;//Diameter in m
L=1.25;//Stroke in m
N=2;//No.of revolutions per second
m=340;//mass of fuel oil in kg
CV=44200;//Calorific value in kJ/kg
T=108;//Torque in kN-m
imep=775;//Indicated mean efective pressure in kN/(m^2)

//CALCULATIONS
IP=(imep*L*3.1415*(d^2)*N)/(8);//Indicated power in kW
TotalIP=(n*IP);//Total indicated power in kW
BP=(2*3.1415*N*T);//Brake power in kW
PI=(m*CV)/3600;//Power input in kW
nB=(BP/PI)*100;//Brake thermal efficiency
bmep=(BP*8)/(n*L*3.1415*(d^2)*2);//Brake mean effective pressure in kN/(m^2)
nM=(BP/TotalIP)*100;//Mechanical efficiency
bsfc=m/BP;//Brake specific fuel consumption in kg/kWh

//OUTPUT
mprintf('Total Indicated Power is %3.1f kW \n Brake Power is %3.1f kW \n Brake thermal efficiency is %3.1f percent \n Brake mean effective pressure is %3.1f kN/(m^2) \n Mechanical efficiency is %3.1f percent \n Brake specific fuel consumption is %3.3f kg/kW.h',TotalIP,BP,nB,bmep,nM,bsfc)



//==============================END OF PROGRAM=================================
