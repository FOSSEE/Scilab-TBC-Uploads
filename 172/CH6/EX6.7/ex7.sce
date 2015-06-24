//example 7
//heat transfer rate in aftercooler
clear
clc
V1=0 //we assume initial velocity to be zero because its given that it enters with a low velocity
V2=25 //final velocity with which carbon dioxide exits in m/s
h2=401.52 //final specific enthalpy of heat when carbon dioxide exits in kJ/kg
h1=198 //initial specific enthalpy of heat in kJ/kg
w=h1-h2-V2^2/(2*1000) //in kJ/kg
Wc=-50 //power input to the compressor in kW
m=Wc/w //mass flow rate of carbon dioxide in kg/s
h3=257.9 //final specific enthalpy of heat when carbon dioxide flows into a constant pressure aftercooler
Qcool=-m*(h3-h2) //heat transfer rate in the aftercooler in kW
printf(" \n hence,heat transfer rate in the aftercooler is Qcool=%.3f kW. \n",Qcool)
