//example 4
//determining quality of steam
clear
clc
hi=2850.1 //initial specific heat enthalpy for steam in kJ/kg
Vi=50 //initial velocity of steam in m/s
Ve=600 //final velocity of steam in m/s
he=hi+Vi^2/(2*1000)-Ve^2/(2*1000) //final specific heat enthalpy for steam in kJ/kg
hf=467.1 //at final state in kJ/kg
hfg=2226.5 //at final state in kJ/kg
xe=(he-hf)/hfg //quality of steam in final state
printf(" \n hence, the quality is xe=%.3f. \n",xe)