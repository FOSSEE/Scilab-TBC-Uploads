//scilab 5.4.1
//Windows 7 operating system
//chapter 20 Cathode Ray Oscilloscope
clc
clear
//slope of the major axis is negative (given)
A=2.6//A=The maximum y-displacement
vyo=1.1//vyo=the vertical displacement
sino=(vyo/A)//o=phase difference between the two voltages
x=asind(sino)
disp("As the major axis of the ellipse has a negative slope,phase difference between the two voltages must lie between 90 degree and 180 degree")
disp("degree",180-x,"Therefore,phase difference between the voltages is =")
