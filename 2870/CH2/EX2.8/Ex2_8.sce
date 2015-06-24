 clc;clear;
//Example 2.8

//constants used
g=9.81;//acceleration due to gravity in m/s^2;

//given values
m=1200;
V=90/3.6;//converting km/h into m/s
d=30;

//calculation
Vver=V*sind(d);//velocity in vertical direction
Wg=m*g*Vver/1000;
disp(Wg,'the addtional power in kW')
