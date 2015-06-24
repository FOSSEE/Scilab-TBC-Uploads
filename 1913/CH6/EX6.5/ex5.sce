clc
clear
//Input data 
L1=0.225;//Thickness of the brick in m
K1=4.984;//Thermal conductivity of brick in kJ/hr m C/m
L2=0.125;//Thickness of insulating brick in m
K2=0.623;//Thermal conductivity of insulating brick in kJ/hr m C /m
Ti=1650;//Temperature inside the furnace in degree centigrade
hl=245.28;//Conductance at inside wall in kJ/hr m^2 C
ho=40.88;//Conductance at outside wall in kJ/hr m^2 C
To=27;//Temperature of surrounding atmosphere in degree centigrade 

//Calculations 
R=((1/hl)+(L1/K1)+(L2/K2)+(1/ho));//Total resistance of the wall in C hr/kJ
q=(Ti-To)/R;//Rate of heat loss per m^2 of the wall in kJ/hr m^2
T1=Ti-(q*(1/hl));//Inner surface temperature in degree centigrade
T3=Ti-(q*((1/hl)+(L1/K1)+(L2/K2)));//Outer surface temperature in degree centigrade

//Output
printf('(a)The rate of heat loss per sq m of the wall q = %3.2f kJ/hr m^2 \n (b)The temperature at the inner surface T1 = %3.2f degree centigrade \n (c)The temperature at the outer surface T3 = %3.2f degree centigrade ',q,T1,T3)
