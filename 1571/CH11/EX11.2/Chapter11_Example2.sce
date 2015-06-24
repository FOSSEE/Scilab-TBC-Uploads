clc
clear

//INPUT
k=0.9;//thermal conductivity in cgs unit
a=10;//area of the copper bar in sq.cm
t1=100;//hot side temperature in deg.C
t2=20;//cool side temperature in deg.C
d=25;//thickness of the bar in cm
t3=14;//temperature of water when entering in deg.C

//CALCULATIONS
m=k*a*(t1-t2)/(d*(t2-t3));//rate flow of water in gm/sec

//OUTPUT
mprintf('rate flow of water is %3.2f gm/sec',m)
