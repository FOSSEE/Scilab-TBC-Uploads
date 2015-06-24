
clc
clear
//Input data
H=200;//Height of the stack in m
D=4;//Diameter of the stack in m
m=1000;//Mass flow rate of gas in kg/s
Ts=100;//Stack exit gas temperature in degree centigrade
Ta=5;//Ambient air temperature in degree centigrade
Vw=50;//Wind velocity in Km/h
Cp=1.005;//Specific heat of the gas in kJ/kgK
pi=3.142;//Mathematical constant the value of pi

//Calculations
Vw1=(50*1000)/(60*60);//Wind velocity in m/s
Qe=m*Cp*(Ts-Ta);//Heat emission from plume in kW
Qe1=Qe/1000;//Heat emission from the plume in MW
p=(101.325)/(0.287*373);//Density of the gas in kg/m^3
A=(pi*D^2)/4;//Area of the stack in m^2
Vs=m/(p*A);//Stack gas exict velocity in m/s
H1=[(2.62*(Qe1^(1/2))*1000)/Vw1]-[(0.029*Vs*D)/Vw1];//The height of the gas plume in m

//Output
printf('The height of the gas plume is H = %3.1f m ',H1)
