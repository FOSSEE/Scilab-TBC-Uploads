clc
clear

//input
rm=0.5;//resistance of a series motor in ohms
w=100;//velocity in rad/sec
i=25;//current taken by the motor in amperes
v=250;//supply voltage in volts
r=2.5;//resistance connected in series with armature in ohms

//calculations
//armature current remains constant
E1=v-(i*rm);//e.m.f. induced under normal conditions
R=r+rm;//total resistance of circuit in ohms
E2=v-(i*R);//new induced e.m.f. in volts
W=(E2/E1)*w;//new speed for the same current in rad/s

//output
mprintf('with resistor in series with the armature the motor will run at %3.1f rad/s',W)
