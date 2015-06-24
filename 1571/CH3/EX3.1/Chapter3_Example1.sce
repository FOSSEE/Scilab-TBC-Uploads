clc
clear

//INPUT DATA 
m=20;//calorimeter of water equivalent in gm
n=1030;//weight of water in gm
p=2;//no.of paddles
a=10;//weight of each paddle in kg
s=80;//distance between paddles in m
g=980;//accelaration due to gravity in cm/sec^2

//CALCULATIONS
E=(p*a*1000*g*s*100);//potential energy in dyne cm
T=(E)/(1050*4.18*10^7);//rise in temperature in deg.C
//if the rise in temp be T,then heat gained by the calorimeter and its contets is 1050T so J=(E)/(1050*T) where (j=4.18*10^7erg/cal)

//OUTPUT
mprintf('the rise in temperature of water is %3.2f deg.C',T)
