//Chapter-13, Example 13.6, Page 560
//=============================================================================
clc
clear

//INPUT DATA
p=1;//Pressure of system in atm
T=25+273;//Temperature of system in K
pco2=(190/760);//Partial pressure of CO2 at one end in atm
pco2o=(95/760);//Partial pressure of CO2 at other end in atm
DAB=(0.16*10^-4);//Binary diffusion coefficient in m^2/s from Table 13.3
R=0.08205//Gas constant in m^3 atm/kmol.K

//CALCULATIONS
NAx=(DAB*(pco2-pco2o))/(R*T*p);//Equimolar counter diffusion in kmol/m^2s
M=(NAx*3.14*(0.05^2/4)*3600);//Mass transfer rate in kmol/h
MCO2=(M*44)/10^-5;//Mass flow rate of CO2 in kg/h *10^-5
Mair=(29*-M)/10^-5;//Mass flow rate of air in kg/h *10^-5

//OUTPUT
mprintf('Mass transfer rate of CO2 is %3.2f*10^-5 kg/h \nMass transfer rate of air is %3.2f*10^-5 kg/h',MCO2,Mair)

//=================================END OF PROGRAM==============================
