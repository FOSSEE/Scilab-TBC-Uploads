clc
clear
//Input data
d=11.5;//Outer diameter of steam pipe line in cm
t1=5;//Thickness of first layer in cm
K1=0.222;//Thermal conductivity of first layer in kJ/hr mC
t2=3;//Thickness of second layer in cm
pi=3.1428;//Constant value of pi
K2=3.14;//Thermal conductivity of second layer in kJ/hr mC
T1=235;//Outside surface temperature of steam pipe in degree centigrade
T3=38;//Outer surface of lagging in degree centigrade
L=1;//Length of the pipe in m

//Calculations
I=log((d+(2*t1))/d);//For inner layer calculation
O=log((d+(2*t1)+(2*t2))/(d+(2*t1)));//For outer layer calculations
R1=(2*pi*L*K1)/I;//Heat loss for change in temperature for first insulated material in kJ/hC
R2=(2*pi*L*K2)/O;//Heat loss for the change in temperature for second insulated material in kJ/hC
Q=(T1-T3)/(1/R1+1/R2);//Heat loss per metre length of pipe per hr in kJ/hr
T2=T1-(Q/R1);//Temperature between the two layers of insulation in degree centigrade

//Output
printf('(a)The heat loss per metre length of pipe per hr Q = %3.2f kJ/hr \n (b)Temperature between the two layers of insulation T= %3.2f degree centigrade ',Q,T2)
