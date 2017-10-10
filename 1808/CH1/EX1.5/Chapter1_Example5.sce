clc
clear
//INPUT DATA
N=1500;//speed in rpm
T=150;//Torque developed in Nm
mf=6;//fuel consumption in kg/h
cv=42000;//calorific value in kJ/kg
L=0.15;//Stroke in m
d=0.12;//bore in m
n=2;//for four cylinders
pa=1;//Atmospheric pressure in bar
Ta=293;//Room temperature in K
Ra=0.287;//Gas constant
hw=0.06;//Head of orifice in m
rw=1000;//density of water in kg/m^3

//CALCULATIONS
BP=2*3.14*(N/60)*(T/1000);//Brake power in kW
nbt=(BP/((mf/3600)*cv))*100;//Brake thermal efficiency in percentage
Pmb=(BP*60*n/(L*(3.14*d^2/4)*N));//brake ean pressure in kPa
ra=(pa/(Ra*Ta))*100;//density of air in kg/m^3
ha=((hw*rw)/ra);//Air inhaled in m
Va=0.62*(3.14*0.03^2/4)*(2*9.81*ha)^(1/2);//Air inhaled in m^3/s
Vs=((3.14*d^2/4)*L*N/(n*60));//Swept volume in m^3/s
nv=(Va/Vs)*100;//Volumetric efficiency in percentage

//OUTPUT
printf('(i)Brake thermal efficiency is %3.2f percentage \n (ii)Brake mean effective pressure is %3.2f kPa \n (iv)Volumetric efficiency is %3.d percentage',nbt,Pmb,nv)
