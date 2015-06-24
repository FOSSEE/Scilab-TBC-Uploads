//Chapter-3, Illustration 5, Page 143
//Title: Internal Combustion Engines
//=============================================================================
clc
clear

//INPUT DATA
t=30;//duration of trial in minutes
N=1750;//speed in rpm
T=330;//brake torque in Nm
m=9.35;//mass of fuel in kg
CV=42300;//Calorific value in kJ/kg
mj=483;//jacket cooling water circulation in kg
Ti=290;//inlet temperature in K
T0=350;//outlet temperature in K
ma=182;//air consumption in kg
Te=759;//exhaust temperature in K
Ta=256;//atmospheric temperature in K
nM=0.83;//Mechanical efficiency
ms=1.25;//mean specific heat capacity of exhaust gas in kJ/kg-K
Cw=4.18;//specific heat capacity of water in kJ/kg-K

//CALCULATIONS
BP=(2*3.1415*T*N)/(60*1000);//Brake power in kW
sfc=(m*2)/BP;//specific fuel consumption in kg/kWh
IP=BP/nM;//Indicated power in kW
nIT=((IP*3600)/(m*CV*2))*100;//Indicated thermal efficiency
Ef=(m*CV)/t;//Eneergy from fuel in kJ/min
EBP=BP*60;//Energy to BP in kJ/min
Ec=(mj*Cw*(T0-Ti))/t;//Energy to cooling water in kJ/min
Ee=((ma+m)*ms*(Te-Ti))/30;//Energy to exhaust in kJ/min
Es=Ef-(EBP+Ec+Ee);//Energy to surroundings in kJ/min

//OUTPUT
mprintf('Brake power is %3.1f kW \n Specific fuel consumption is %3.3f kg/kWh \n Indicated thermal efficiency is %3.1f percent \n Energy from fuel is %3.0f kJ/min \n Energy to BP is %3.0f kJ/min \n Energy to cooling water is %3.0f kJ/min \n Energy to exhaust is %3.0f kJ/min \n Energy to surroundings is %3.0f kJ/min',BP,sfc,nIT,Ef,EBP,Ec,Ee,Es)






//==============================END OF PROGRAM=================================
