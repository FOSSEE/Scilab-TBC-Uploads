clc 
clear
//Input data
x1=0.2;//Thickness of the fire brick
x2=0.2;//Thickness of the common brick
Ti=1400;//Temperature of hot gases in the inner surface of the brick in degree centigrade
To=50;//Temperature of gases in the outer surface of the brick in degree centigrade
h1=16.5;//Convection heat transfer coefficient on gas side in W/mC
h2=17.5;//radiation heat transfer coefficient on gas side in W/mC
h3=12.5;//Convection heat transfer coefficient on outer side in W/mC
h4=6.5;//Radiation heat transfer coeeficient on outer side in W/mC
K1=4;//Thermal conductivity of fire brick in W/mC
K2=0.65;//Thermal conductivity of common brick in W/mC

//Calculations 
hi=h1+h2;//Total heat transfer coefficient in inner in W/mC
ho=h3+h4;//Total heat transfer coefficient in outer in W/mC
Q=(Ti-To)/((1/hi)+(x1/K1)+(x2/K2)+(1/ho));//Heat flow through the furnace composite wall per unit area in W/m^2
Q1=Q/1000;//Heat flow through the furnace composite wall per unit area in kW/m^2
T1=Ti-(Q/hi);//Temperature at the inside of the fire brick in degree centigrade
T2=T1-(Q*(x1/K1));//Maximum temperature to which common brick is subjected in degree centigrade

//Output
printf('(a)Heat loss per m^2 area of the furnace wall Q = %3.2f kW/m^2 \n (b)Maximum temperature to which common brick is subjected T1 = %3.3f degree centigrade \n     similarly on other side T2 = %3.3f degree centigrade',Q1,T1,T2)
