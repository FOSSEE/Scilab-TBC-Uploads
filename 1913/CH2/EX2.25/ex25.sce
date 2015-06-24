clc
clear
//Input data
m=10;//The rate of fluid compressed adiabatically in kg/s
p1=500;//Initial pressure of the process in kPa
p2=5000;//Final pressure of the process in kPa
v=0.001;//The specific volume of the fluid in m^3/kg

//Calculations
P=m*v*(p2-p1);//The power required in kW

//Output
printf('The power required P = %3.0f kW ',P)
