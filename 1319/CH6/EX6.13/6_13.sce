//Voltage between feeder and bus bar in a series generator

clc;
clear;

V=50;
I=200;

Rf=0.3; // Feeder resistance

//Various Currents
I1=160;
I2=50;

deff('y=vol(x)','y=(x*Rf)-(V*x/I)') // Function to calculate the voltages

Va=vol(I1);
Vb=vol(I2);

printf('The voltage between the far end of the feeder and the bus bar at a current of \n')
printf('a) 160A = %g V \n',Va)
printf('b) 50A = %g V \n',Vb)
