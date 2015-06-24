clc
clear
//Input data
L=4.6;//Length of the wall in m
b=2.3;//Breadth of the wall in m
x1=0.025;//Thickness of the wood in m
x2=0.075;//Thickness of the cork slabbing in m
x3=0.115;//Thickness of the brick in m
t1=18;//Exterior temperature of the wall in degree centigrade
t4=-20;//Interior temperature of the wall in degree centigrade
K1=7.5;//Thermal conductivity of the wood in kJ/hr mC
K2=1.9;//Thermal conductivity of the wood in kJ/hr.mC
K3=41;//Thermal conductivity of the brick in kJ/hr mC

//Calculations
A=L*b;//Area of the wall in m^2
R1=(K1*A)/(x1);//Heat loss for the change in temperature for insulated wood material in kJ/hrC
R2=(K2*A)/(x2);//Heat loss for the change in temperature for cork material in kJ/hrC
R3=(K3*A)/(x3);//Heat loss for the change in temperature for brick in kJ/hrC
Q=(t1-t4)/(1/R1+1/R2+1/R3);//Heat loss with insulation in kJ/hr
Q1=Q*24;//Heat loss with insulation in kJ/24hr
t2=t1-(Q/R1);//Interface temperature t2 in degree centigrade 
t3=t2-(Q/R2);//Interface temperature t3 in degree centigrade

//Output 
printf('(a)The leakage through the wall per 24 hours Q = %3.2f kJ/24hr \n (b)Temperature at the interface t2 = %3.4f degree centigrade \n   Temperature at interface t3 = %3.4f degree centigrade ',Q1,t2,t3)
