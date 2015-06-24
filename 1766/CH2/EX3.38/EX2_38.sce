clc;funcprot(0);//Example 2.38
//Initilisation of Variables
t=0.001;....//Thickness of copper plate in m
L=0.15;....//Height of plate in m
K=60;....//thermal conductivity of wall material in W/m*degrees celcius 
Tb=50;....//temparature of pipe wall in degrees celcius
Th=100;....//temparature reading in thermometer in degrees celcius
h=25;....//heat transfer coefficient batween air and well wall in W/m^2
//calculations
m=sqrt(h/(K*t));....//
Tf=((50/cosh(m*L))-Th)/((1/cosh(m*L))-1);...//temparature of air in degrees celcius 
e=Tf-Th;....//error in reading in degrees celcius
p=(e/Tf)*100;....//percentage error in %
disp(Tf,"temparature of air in degrees celcius:")
disp(p,"percentage error in %:")
