clc
clear

//INPUT
dp=50*10^6;//change in pressure in dynes/sq.cm
cp=7*4.2*10^7;//specific heat constant pressure in ergs/mole.K
a=1.32*10^12;//vanderwaal constant in cm^4.dyne/mole^2
b=31.2;//vanderwaal constant in cm^2/mole
t=300;//inital temperature in K
r=2*4.2*10^7;//ergs/mole.K

//CALCULATIONS
dt=((2*a/(r*t))-b)*dp/cp;//change in temperature in K

//OUTPUT
mprintf('the change in temperature is %3.2f K',dt)
