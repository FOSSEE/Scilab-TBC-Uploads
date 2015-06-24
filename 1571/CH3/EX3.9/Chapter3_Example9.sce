clc
clear

//INPUT DATA
h=10000;//vertical height of water fall in cm
v=5;//volume disharged per sec in litres
J=4.18;//joule's constant in j/cal
g=981;//accelaration due to gravity in cm/sec^2

//CALCULATIONS
m=v*1000;//mass of water disharged per sec in gm
w=m*h*g;//work done in falling through 100m in erg
H=w/(J*10^7);//quantity of heat produced in cal
T=H/m;//rise in temperature in deg.C

//OUTPUT
mprintf('the quantity of heat produced is %3f cal \n the rise in temperature is %3.2f deg.C',H,T)
