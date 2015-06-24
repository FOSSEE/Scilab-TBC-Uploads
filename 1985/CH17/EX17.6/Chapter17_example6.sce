clc
clear
//Input data
d1=0.04//Thickness of first layer in m
d2=0.02//Thickness of second layer in m
K1=226.8//Thermal conductivity of the first layer in W/m.K
K2=151.2//Thermal conductivity of the second layer in W/m.K
T1=100+273//Temperature of first layer in K
T2=0+273//Temperature of second layer in K

//Calculations
T=((((K1*T1)/d1)-((K2*T2)/d2))/((K1/d1)+(K2/d2)))//The temperature at the interface in K. The formula and calculation is made wrong in the textbook.

//Output
printf('The temperature at the interface is %3.3f K',T)
