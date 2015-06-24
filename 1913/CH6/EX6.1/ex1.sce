clc
clear
//Input data
t1=270;//Temperature inside surface of the furnace wall in degree centigrade
t3=20;//Temperature outside surface is dissipating heat by convection into air in degree centigrade
L=0.04;//Thickness of the wall in m
K=1.2;//Thermal conductivity of wall in W/m-K
t2=70;//Temperature of outside surface should not exceed in degree centigrade
A=1;//Assuming area in m^2

//Calculations
Q1=(K*A*(t1-t2))/(L);//Heat transfer through the furnace wall in W
hc=(Q1)/(A*(t2-t3));//Heat transfer coefficient in W/m^2K

//Output
printf('The minimum value of heat transfer coefficient at the outer surface hc = %3.1f W/m^2K',hc)
