clc
clear
//Input data
R1=0.06;//Thickness of material layer in m
R2=0.12;//Thickness of the two insulating materials in m
R3=0.16;//Thickness of material layers with pipe in m
K1=0.24;//Thermal conductivity of one layer in W/mC
K2=0.4;//Thermal conductivity of another layer in W/mC
L=60;//Length of the pipe in m
hi=60;//Heat transfer coefficient inside in W/m^2C
ho=12;//Heat transfer coefficient outside in W/m^2C
ti=65;//Temperature of hot air flowing in pipe in degree centigrade
to=20;//Atmospheric temperature in degree centigrade
pi=3.1428;//Constant value of pi

//Calculations
Q=(ti-to)*(2*pi*L)/((1/(hi*R1))+(log(R2/R1)/(K1))+(log(R3/R2)/(K2))+(1/(ho*R3)));//Rate of heat loss in W
Q1=Q/1000;//Rate of heat loss in kW

//Output
printf('The rate of heat loss Q = %3.5f kW ',Q1)
