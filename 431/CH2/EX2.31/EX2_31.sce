//Calculate the efficiency of machine
//Chapter 2
//Example 2.31
//page 148
clear;
clc; 
disp("Example 2.31")
Ra=0.5;.................//armature resistance in ohms
Rf=750;...............//field circuit resistance in ohms
V=500;.......................//voltage in volts
If=V/Rf;..........................//current in amperes 
l=3;..........................//line current in amperes
i=2.33;..........................//current in motor in amperes
I=0.67;.........................//current i amperes
L=(V*l)-(((i)^2)*Ra)-(V*I);.........................//Iron,friction and windage losses
O=20;...............................//generator 
OP=(O*1000)/V;................//output current of the generator under loaded condition in amperes
Ia=I+OP;............//output in amperes
Effi=(O*1000*100)/((O*1000)+(((Ia)^2)*Ra)+(V*I)+L);
printf("efficiency of the machine=%fpercent",Effi)