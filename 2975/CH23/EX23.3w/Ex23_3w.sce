//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 23_3w

clc;clear;
//Given Data

p1=80;  //Pressure of the gas in melting ice(Unit : cm)
p2=160; //Pressure of the gas in a liquid (Unit : cm)
t1=273.15; //Temperature of melting ice in (Unit : kelvin)

// Calculation

t2=(t1*p2)/p1;  //Calculation os the temperatue of liquid (Unit: Kelvin)

disp(t2,"The Temperature of liquid is(Unit: Kelvin)");

