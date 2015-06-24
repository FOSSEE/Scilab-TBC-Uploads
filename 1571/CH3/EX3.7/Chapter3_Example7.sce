clc
clear

//INPUT DATA 
l=100;//length of glass tube in cm
m=500;//mass of mercury in glass tube in gm
n=20;//number of times inverted i succession
cp=0.03;//specific heat of mercury in cal/gm/deg.C
J=4.2;//joule's equivalent in j/cal
g=981;//accelaration due to gravity in cm/s^2

//CALCULATIONS
PE=m*g*l;//potential energy for each time in ergs
TE=PE*n;//total loss in ergs
T=TE/(m*cp*J*10^7);//rise in temperature in deg.C
//if T is the rise in temperature,then heat devoloped is m*cp*T

//OUTPUT
mprintf('the rise in temperature is %3.2f deg.C',T)
