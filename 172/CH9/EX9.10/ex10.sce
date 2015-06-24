//example 10
//turbine efficiency
clear
clc
hi=3051.2 //initial specific heat of enthalpy in kJ/kg
si=7.1228 //initial specific entropy in kJ/kg-K
sf=0.7548 //in kJ/kg-K
sfg=7.2536 //in kJ/kg-K
ses=si //final specific entropy is same as the initial
xes=(si-sf)/sfg //quality of steam when it leaves the turbine
hf=225.9 //in kJ/kg
hfg=2373.1 //in kJ/kg
hes=hf+xes*hfg //final specific heat of enthalpy in kJ/kg
ws=hi-hes //work output of turbine calculated ideally  in kJ/kg
wa=600 //actual work output of turbine in kJ/kg
nturbine=wa/ws //efiiciency of turbine 
printf("\n hence,efficiency of the turbine is nturbine=%.1f.\n",nturbine*100)