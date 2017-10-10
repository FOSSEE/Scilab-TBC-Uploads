//To create an instrument that measures voltages and currents upto a rated value

clc;
clear;

Rm=10;
Im=50*(10^-3);
V=750;
I=100;

//To Calculate the required voltage a resistor should be added in series with the internal resistance

R=poly([0 1],'R','c');

sr=Im*(R+Rm)-V;

R=roots(sr);//Characteristic equation to find R

// To attain the required current, a resistor should be added in parallel to the internal resistance

r=poly([0 1],'r','c');// Characteristic equation to find r

pr=Im*(r+Rm)-(I*r);

r=roots(pr);

printf('To Read 750 V a series resitance of %g ohms should be connected to the instrument \n',R)
printf('To Read 100 A a parallel resitance of %g milli ohms should be connected to the instrument \n',r*1000)



