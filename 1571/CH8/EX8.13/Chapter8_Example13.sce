clc
clear

//INPUT
m=5;//mass of air in gm
cv=0.172;//specific heat at constant volume cal/gm
dt=10;//changi in temperature in K

//CALCULATIONS
ie=m*cv*dt;//change in internal energy in cal

//OUTPUT
mprintf('change in internal energy is %3.2f cal',ie)
