clc
clear

//input
c=0.000002;// capacitance of a capacitor in farad
theta=0.12; // loss angle in radians
v=230; // a.c. voltage supply in volts
f=50; //supply frequency in hertz

//calculations
ic=v*2*%pi*f*c;// capacitor current in amperes
ir=ic*tan(theta);// current through shunt resistance in amperes
r=v/ir;// shunt resistance in ohm

//output
mprintf('the value of the equivalent shunt resistance is %3.10f ohm',r)
