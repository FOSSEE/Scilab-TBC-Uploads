clc
clear
//INPUT DATA
V=5.9*10^-6//voltage applied across a Josephson junction in V
e=1.6*10^-19//charge of electron in coulombs
h=6.62*10^-34//Planck's constant in J-sec

//CALCULATION
v=((2*e*V)/h)/10^9//The frequency of the radiation emitted by the junction in Hz

//OUTPUT
printf('The frequency of the radiation emitted by the junction is %3.3f*10^9 Hz',v)
