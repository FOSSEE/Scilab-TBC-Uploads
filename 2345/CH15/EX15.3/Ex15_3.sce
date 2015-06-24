//Finding current
//Example 15.3(pg 393)
clc
clear
M=250000//weight of water lifted per hr in kg
h=50//height in metres
g=9.81//gravitational const.
WD=M*h*g//work done by pump per hr in watt-sec
P=WD/3600//Power output of pump per sec in watts
V=500//supply voltage in volts
Ep=0.8//efficiency of pump
Em=0.9//efficiency of motor
E=Em*Ep//overall efficiency
I=P/(V*E)//current in amperes
printf('Current drawn by the motor is %3.2f Amperes',I)
