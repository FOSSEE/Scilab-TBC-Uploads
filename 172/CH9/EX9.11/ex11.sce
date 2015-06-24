//example 11
//turbine inlet pressure
clear
clc
hi=1757.3 //initial specific heat of enthalpy of air in  kJ/kg
si=8.6905 //initial specifc entropy of airin kJ/kg-K
he=855.3 //final specific heat of enthalpy of air in kJ/kg
w=hi-he //actual work done by turbine in kJ/kg
n=0.85 //efficiency of turbine 
ws=w/n //ideal work done by turbine in kJ/kg
hes=hi-ws //from first law of isentropic process
Tes=683.7 //final temperature in kelvins from air tables
ses=7.7148 //in kJ/kg-K
R=0.287 //gas constant in kJ/kg-K
Pi=100/%e^((si-ses)/-R) //turbine inlet pressure in kPa
printf("\n hence,turbine inlet pressure is Pi=%.0f kPa.\n",Pi)