clc
clear

//Input data
D=12683*1000 //Diameter of Earth in m
g=9.81 //Acceleration due to gravity in m/s
h=500*1000 //Altitude in m

//Calculation
Uorb=(D/2)*sqrt(g/((D/2)+h)) //Orbital velocity in m/s
Uesc=sqrt(2)*Uorb //Escape velocity in m/s

//Output
printf('Orbital velocity is %3.2f m/s\n Escape velocity is %3.2f m/s',Uorb,Uesc)
