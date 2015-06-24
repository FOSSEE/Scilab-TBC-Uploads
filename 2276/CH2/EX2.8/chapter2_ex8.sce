clc
clear

//input
a=2500; //area of hysteresis loop in square millimeter
H=16;//magnetising force in ampere/mater per mm when hysteresis loop is plotted on a graph
B=0.02;//flux density in tesla per mm when hysteresis loop is plotted on a graph
hloss=24;//desired hysteresis loss
n=50;//cycles of magnetisation

//calculations
e=B*H;//energy represented by square millimeter
l=a*e;//loss/cubic meter/cycle
Vmax=hloss/(l*n);//maximum volume core in cubic meter

//output
mprintf('the permissible volume of the transformer core is %3.10f cubicmeter',Vmax)
