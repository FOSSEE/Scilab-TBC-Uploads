clc
clear

//INPUT
p0=76;//pressure at 0 deg.C in cm of hg
p1=228;//pressure (76+152) at T deg.C in cm of hg
t0=273;//temperature of bulb in K

//CALCULATIONS
T=p1*t0/p0;//temperature at 228 cm of hg pressure in K

//OUTPUT
mprintf('the temperature of bulb is %3.2f K',T)
