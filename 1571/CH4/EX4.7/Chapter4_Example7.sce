clc
clear

//INPUT
t=273;//temperature at ntp in K
//rms velocity of oxygen is 3/2 times its rms velocity at ntp then e1=(3/2)*e

//CALCULATIONS
t1=(9*t/4);//temperature of the oxygen molecule in K

//OUTPUT
mprintf('temperature of the oxygen in %3.2fK',t1)
