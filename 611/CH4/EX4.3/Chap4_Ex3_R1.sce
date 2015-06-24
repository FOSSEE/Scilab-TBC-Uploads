// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 3,Page 96
//Title:Final temperature and final pressure
//================================================================================================================
clear 
clc

//INPUT
V=1;//volume of tank in m^3;
N=200;//number of moles of carbon dioxide in tank in mol
T1=25;//ambient temperature in degree celsius
I=5;//current in amperes passed through the resistor place in the tank
Voltage=440;//voltage in volts existing across the resistor
t=10;//time in minutes for which the current is passed
a=363.077*10^-3;//van der waals constant in Pa (m^3/mol)^2
b=0.043*10^-3;//van der waals constant in m^3/mol
Cv=32.34;//molar heat capacity at constant volume in J/molK
R=8.314;//universal gas constant in J/molK

//CALCULATION
MV=V/N;//calculation of molar volume in m^3/mol
Q=0;//energy transfer as heat during the process
W_Pdv=0;//mechanical work done by the system
W_elec=-(Voltage*I*t*60)*(10^-6);//calculation of electrical work done on the system in MJ
U2_1=Q-(W_Pdv+W_elec);//calculation of internal energy in MJ using Eq.(4.5)
T2=((U2_1*10^6)/(N*Cv))+(T1+273.15);//calculation of final temperature in K using the relation du=CvdT+(a/v^2)dv, where dv is zero
P=(((R*T2)/(MV-b))-(a/(MV^2)))*10^-3;//calculation of final pressure in kPa using Eq.(3.18)

//OUTPUT
mprintf('\n The final pressure= %0.3f kPa \n',P);
mprintf('\n The final temperature= %0.2f K\n',T2);


//===============================================END OF PROGRAM===================================================
