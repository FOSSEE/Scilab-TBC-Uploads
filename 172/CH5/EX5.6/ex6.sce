//example 6
//calculating work and heat transfer for the process
clear
clc
V1=0.1 //volume of cylinder in m^3
m=0.5 //mass of steam in kg
v1=V1/m //specific volume of steam in m^3/kg
vf=0.001084 //m^3/kg
vfg=0.4614 //m^3/kg
x1=(v1-vf)/vfg //quality
hf=604.74 //kJ/kg
hfg=2133.8//kJ/kg
h2=3066.8 //final specific heat enthalpy in kJ/kg
h1=hf+x1*hfg //initial specific enthalpy in kJ/kg
Q=m*(h2-h1) //heat transfer for this process in kJ
P=400 //pressure inside cylinder in kPa
v2=0.6548 //specific enthalpy in m^3/kg
W=m*P*(v2-v1) //work done for the process in kJ
printf("\n hence, work done for the process, W = %.3f kJ. \n",W)
printf("\n and heat transfer, Q=%.3f kJ.\n",Q)