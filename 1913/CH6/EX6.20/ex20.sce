clc
clear
//Input data
t1=24;//Temperature at the outside surface in degree centigrade 
t4=-15;//Temperature at the inner surface in degree centigrade
A=1;//Assuming unit area in m^2
K1=23.2;//Thermal conductivity of steel in W/mC
K2=0.014;//Thermal conductivity of glasswood in W/mC
K3=0.052;//Thermal conductivity of plywood in W/mC
x1=0.0015;//Thickness of steel sheet at outer surface in m
x2=0.02;//Thickness of glasswood in between in m
x3=0.01;//Thickness of plywood at a inner surface in m

//Calculations
R1=(K1*A)/x1;//Heat loss for the change in temperature for first insulated material
R2=(K2*A)/x2;//Heat loss for the change in temperature for second insulated material
R3=(K3*A)/x3;//Heat loss for the change in temperature for third insulated material
Q=(t1-t4)/(1/R1+1/R2+1/R3);//The rate of heat flow in W/m^2

//Output
printf('The rate of heat flow Q = %3.2f W/m^2 ',Q)
