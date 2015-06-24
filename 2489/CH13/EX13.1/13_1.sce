clc
//Intitalisation of variables
clear
F= 96500 //coulombs
t= 3600 //sec
n= 0.75 //mole
v= 22.4 //lit
v1= 0.336 //lit
//CALCULATIONS
cs= F*v1/(n*v*t)
//RESULTS
printf ('Current strength = %.3f amp',cs)
