clc
clear

//INPUT
h=2*3.14*100;//heat received by the lens per min in  cal
m=25;//mass of the ice in gm
l=80;//latent heat of ice in cal/gm

//CALCULATIONS
t=m*l/h;//time for which the sun rays falls in min

//OUTPUT
mprintf('time for which the sun rays falls is %3.2f min',t)
