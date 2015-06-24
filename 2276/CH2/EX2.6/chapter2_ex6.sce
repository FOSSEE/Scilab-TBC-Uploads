clc
clear

//input
h=500; //hysteresis losses of the rotor of a d.c. machine in joule/cubic meter/cycle
n=50; //number of cycles of magnetisation
d=0.0075; //density of the material in mg/cubic meter
H=10; //magnetising force in ampere/mater per mm when hysteresis loop is plotted on a graph
B=0.02; //flux density in tesla per mm when hysteresis loop is plotted on a graph

//calculations
e=B*H; //energy represented by 1square mm in joules
a=h/e; //area of loop in square mm
p=h*n; //power loss in watts per cubic meter
P=(p*(10^-6))/d; //power loss in watts per Kg

//output
mprintf('the area of hysteresis loop is %3.10f sq.mm \n the power loss is %3.10f W/Kg',a,P)
