//Calculate frequency of rotor induced emf
//Chapter 4
//Example 4.4
//page 293
clear;
clc; 
disp("Example 4.4")
Nr=1440;                //rotor speed in rpm
f=50;                    //frequency in hertz
//calculating Ns for values of P=2,4,6,8 etc
//by checking P=4
P=4;
Ns=(120*f)/P;                 //Synchronous speed
S=(Ns-Nr)/Ns;                //slip
Fr=S*f;                       //rotor frequency
printf("Rotor frequency=%dHz",Fr)

