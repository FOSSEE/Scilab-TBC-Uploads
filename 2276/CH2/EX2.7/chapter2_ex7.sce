clc
clear

//input
p=6; //number of poles of a d.c. machine
v=0.01; // volume of iron in cubic meters
d=0.0079; //density of the iron in mg/square meter
hi=4; // hysterisis loss of iron in W/Kg
hl=619; //loss given by hysteresis loop in joule/cubic meter/cycle

//calculations
h=hi*d*v*(10^6);// total hysteresis losses in watts
f=h/(hl*v);// frequency in cycles/second
n=(f*60)/3; //rotor undergoes 3 cycles of magnetisation in each revolution and speed in rev/minute
a=(f*2*%pi)/3; // angular velocity if rotor in radian per second

//output
mprintf('the speed of the machine will be %3.10f rev/min or %3.10f rad/s',n,a)
