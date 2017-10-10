//Percentage error calculation in a wattmeter

clc;
clear;

//Rated Parameters
I=50;
V=230;

R=61;// No. of revolutions
t=37/3600; // Time in hours

C=520; // Normal Disc Speed

Pfl=I*V;// Power at full load

Ps=Pfl*t/1000; // Power Supplied in kWhr

Pr=R/C; //Power recorded in kWhr

err=(Ps-Pr)*100/Ps;

printf('The Percentage Error = %g percent slow \n',err)
