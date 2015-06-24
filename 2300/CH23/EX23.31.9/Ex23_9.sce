//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
h=6.62*10^-34//h=Planck's constant
v=2.4*10^15//v=frequency of emitted radiation in Hz
c=3*10^8//c=velocity of light in vacuum in m/s
A21=1/(1.66*10^-8)//A21=mean spontaneous life time
B21=((c^3)*A21)/(8*%pi*h*(v^3))//B21=probability of stimulated emission
disp("m^3/(J.s^2)",B21,"The desired probability is =")
