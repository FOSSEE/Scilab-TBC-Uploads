clc
clear
//Input data
A1=3.5;//Area of the boiler plate in m^2
X2=0.02;//Thickness of the plate in m
K2=50;//Thermal conductivity of plate in W/m-K
X1=0.002;//Thickness of layer inside boiler in m
K1=1;//Thermal conductivity of layer in W/m-K
t1=250;//The hot gas temperature of the plate in degree centigrade
t3=200;//Temperature of cold air in degree centigrade

//Calculations 
T=t1-t3;//Temperature difference in degree centigrade
Q=(T*A1)/((X1/K1)+(X2/K2));//Rate of heat loss in W
Q1=Q/1000;//Rate of heat loss in kJ/s
Q2=Q1*3600;//Rate of heat loss in kJ/hr

//Output
printf('(a)Rate of heat loss in kJ/s = %3.2f kJ/s \n (b)Rate of heat loss per hour Q = %3.2f kJ/hr ',Q1,Q2)
