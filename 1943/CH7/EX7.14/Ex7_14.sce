
clc
clear
//Input data
a=17//Nozzle angle in degrees
Vb=125//Blade velocity in m/s
b2=22//Blade angle n degrees
a1=26//Blade angle n degrees
b4=30//Blade angle n degrees
f=0.9//Friction factor
a2=90//Axial angle in degrees

//Calculations
dVw=1040//Velocity in m/s from Velocity triangles Fig. E.7.14
V1=575//Velocity in m/s from Velocity triangles Fig. E.7.14
V4=75//Velocity of steam exiting stage in m/s from Velocity triangles Fig. E.7.14
WD=(dVw*Vb)/1000//Diagram work in kJ/kg
nd=((WD*1000)/((1/2)*V1^2))*100//Diagram efficiency in percent

//Output
printf('(a) Absolute velocity of steam leaving the stage is %3.0f m/s \n (b) the diagram work is %3.0f kJ/kg \n (c) the diagram efficiency is %3.2f percent',V4,WD,nd)
