clc
clear
//Input data
N=700;//Engine speed in rpm
D=0.6;//Diameter of brake drum in m
d=0.05;//Diameter of rope in m
W=35;//Dead load on the brake drum in kg
S=4.5;//Spring balance reading in kg
g=9.81;//Gravitational constant in N/m^2
pi=3.14;//Mathematical constant

//Calculations
P=(((W-S)*g*pi*(D+d))/1000)*(N/60);//Power in kW

//Output
printf(' The power available at the brakes is %3.3f kW',P)
