clc
clear
//Input data
K1=0.93;//Thermal conductivity of fire clay in W/mC
K2=0.13;//Thermal conductivity of diatomite brick in W/mC
K3=0.7;//Thermal conductivity of red brick in W/mC
x1=0.12;//Thickness of fire clay in m
x2=0.05;//Thickness of diatomite in m
x3=0.25;//Thickness of brick in m
T=1;//Assume the difference between temperature in degree centigrade

//Calculations
Q=(T)/((x1/K1)+(x2/K2)+(x3/K3));//The heat flow per unit area in W/m^2
X3=K3*((T/Q)-(x1/K1));//Thickness of the red brick layer in m
X=X3*100;//Thickness of the red brick layer in cm

//Output
printf('The thickness of the red brick layer, \n if the brick work is to be laid with out diatomic is %3.3f cm ',X)
