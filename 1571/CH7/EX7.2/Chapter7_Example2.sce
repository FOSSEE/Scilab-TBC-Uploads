clc
clear

//INPUT
b=0.00136;//vanderwaal constant in suv/gm
a=0.011;//vanderwaal constant in atm(suv)^2/gm^2
r=0.003696;//universal gas constant in atm(suv)/gm.deg
t=423;//temperature of steam in K
cp=-0.674/0.024205;//specific heat at 423K in atm(cc)gm(deg)

//CALCULATIONS
dt=(-b+(2*a/(r*t)))/cp;//change of temperature per atm drop of pressure in deg/atm

//OUTPUT
mprintf('the change of temperature per atmosphere drop of pressure is %3.7f deg/atm',dt)
