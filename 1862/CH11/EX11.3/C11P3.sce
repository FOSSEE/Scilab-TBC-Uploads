
clear
 clc
//to find average power must be applied by the elevator motor

// GIVEN::

//weight of elevator
w = 5160//in N
//average weight of passenger
wp = 710//in N
//number of passengers
n = 20
//distance between floors
sf = 3.5//in meters
//time elasped
t = 18//in seconds
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//total weight of elevator and passenger
//upward force exerted by motor
F = w+n*wp//in N
//total height by which elevator moves
s = sf*25//in meters
//work done must be applied by the elevator motor
W = F*s//in J 
//average power
Pav = (W/t)*10^-3//in kW

//value of force F is slightly different than scilab answer
//but silab answer is same as calculator answer   
printf ("\n\n Upward force exerted by motor F = \n\n %5i N",F);
printf ("\n\n Work done must be applied by the elevator motor W  = \n\n %.1e J",W);
printf ("\n\n Average power Pav = \n\n %2i kW",Pav);
