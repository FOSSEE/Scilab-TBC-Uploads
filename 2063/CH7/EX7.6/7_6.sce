clc
clear
//Input data
d=25;//Diameter of cylinder in cm
l=0.4;//Stroke of piston in m
N=200;//Speed in rpm
m=10;//Misfires per minute
M=6.2;//Mean effective pressure in kgf/cm^2
nm=0.8;//Mechanical efficiency in percent

//Calculations
np=(N/2)-m;//Number of power strokes per minute
A=(3.14*d^2)/4;//Area of the cylinder
I=(M*l*A*np)/4500;//Indicated horse power in kW
B=I*nm;//Brake horse power in kW
F=I-B;//Friction horse power in kW

//Output
printf('(a)The indicated horse power is %3.2f kW \n (b)The brake horse power is %3.2f kW \n (c)Friction horse power is %3.2f kW',I,B,F)
