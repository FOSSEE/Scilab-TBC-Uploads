clc
clear

//INPUT DATA 
h=5000;//height of the niagara falls in cm
J=4.2*10^7;//joules constant in ergs per cal
g=981;//accelaration due to gravity in cm/sec^2

//CALCULATIIONS
w=h*g;//work done per unit mass in ergs/gn
T=w/J;//rise in temperature in deg.C

//OUTPUT
mprintf('the rise in temperature is %3.2f deg.C',T)
