clc
clear
//Input data
d=0.155//Diameter of orifice in mm
Cd=0.94//Coefficient of discharge
td=3.18//Throat diameter in cm
Ca=0.84//Coefficient of discharge
x=29//Venturi depression
dw=0.89//Minimum depression of water in cm
sa=1.1//Specific weight of air in kg/m^3
sg=0.72//Specific gravity of petrol
cyd=[7.75,10.75]//Cylinder dimensions in cm
fc=10.9//Fuel consumption in kg/hr
N=3200//Speed in r.p.m
n=4//Number of cylinders

//Calculations
w=(((3.14/4)*td^2)/((3.14/4)*d^2))*(Ca/Cd)*sqrt((sa/(sg*1000))*(x/(x-dw)))//Air fuel ratio
Va=(3.14/4)*(td/100)^2*Ca*sqrt(2*9.81*sa*x*6)//Volume of air drawn/sec
vn=(Va/((3.14/4)*(cyd(1)/100)^2*(cyd(2)/100)*n*(N/(2*60))))*100//Volumetric efficiency in percent

//Output
printf('Air fue ratio is %3.1f \n Volumetric efficiency is %3.1f percent',w,vn)
