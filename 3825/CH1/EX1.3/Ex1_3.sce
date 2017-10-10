clc
Pa=101.325 //atmospheric pressure in kPa
A=0.05 //cross sectional area of piston in metre square
k=50 //spring constant in kN/m
V0=0.1 //initial volume of gas in metre cube
V=0.2 //volume of gas at any instant during expansion in metre cube
P=Pa+((k*(V-V0))/(A*A)); //force balance equation
mprintf("P=%fkPa",P)//final pressure on gas cylinder



