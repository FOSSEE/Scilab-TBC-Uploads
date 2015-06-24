//example 1
//work done by steam
clear
clc
hi=3051.2 //initial specific heat of enthalpy of steam in kJ/kg
si=7.1228 //initial specific entropy of steam in kJ/kg-K
Pe=0.15 //final pressure in MPa
se=si //specific entropy in final state in kJ/kg-K
sf=1.4335 //in kJ/kg-K
sfg=5.7897 //in kJ/kg-K
vi=50 //velocity with which steam enters turbine in m/s
ve=200 //velocity with which steam leaves the turbine in m/s
xe=(se-sf)/sfg //quality of steam in final state
hf=467.1 //in kJ/kg
hfg=2226.5 //in kJ/kg
he=hf+xe*hfg //final specific heat of enthalpy of steam in kJ/kg
w=hi+vi^2/(2*1000)-he-ve^2/(2*1000) //work of steam for isentropic process in kJ/kg
printf("\n hence, work per kilogram of steam for this isentropic process is w=%.1f kJ/kg-K.\n",w)