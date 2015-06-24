clc
clear 
//Input data
x1=0.3;//Thickness of refractory bricks in m
K1=5.66;//Thermal conductivity of refractory bricks in kJ/hr mC
t1=1650;//Inner surface temperature of the wall in degree centigrade
t2=320;//Outside surface temperature of the wall in degree centigrade
x2=0.3;//Thickness of insulating brick in m
K2=1.26;//Thermal conductivity of insulating brick in kJ/hr mC
A=1;//unit surface area in m^2
t3=27;//Outside surface temperature of the brick in degree centigrade

//Calculations 
T1=t1-t2;//Temperature difference in degree centigrade
Q1=(K1*A*T1)/(x1);//Heat loss without insulation in kJ/hr/m^2
R1=(K1*A)/(x1);//Heat loss for the change in temperature for refractory brick wall material in kJ/hrC
R2=(K2*A)/(x2);//Heat loss for the change in temperature for insulated brick wall material kJ/hrC
Q2=(t1-t3)/((1/R1)+(1/R2));//Heat loss with insulation in kJ/hr/m^2
Q3=Q1-Q2;//Reduction in heat loss through the wall in kJ/hr/m^2

//Output
printf('The reduction in heat loss through the wall is  %3.2f kJ/hr/m^2 ',Q3)
