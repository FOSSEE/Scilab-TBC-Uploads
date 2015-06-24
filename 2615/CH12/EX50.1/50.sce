clc
//initialisation of variables
alf=30//degree
v=500//m/sec
g=9.8//sec
a=60//degre
//CALCULATIONS
T=2*v*sind(alf)/g//sec
L=((v^2)/(g))*sind(a)//km
//RESULTS
printf('the time of flight is=% f km',L)
