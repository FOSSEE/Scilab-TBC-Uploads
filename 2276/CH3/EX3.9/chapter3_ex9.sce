clc
clear

//input
ra=0.1;//armature resistance of a shunt generator in ohms
rf=250;//feild resistance of a shunt generator in ohms
p=7250;//load supplied by the shunt generator in watts
v=250;//voltage of shunt generator in volts

//calculations
il=p/v;//load current in amperes
if=v/rf;//feild current in amperes
ia=il+if;//armature current in amperes
e=v+(ia*ra);//generated e.m.f. in volts
P=(e*ia)/1000;//armature power in kW

//output
mprintf('the power developed in the armature will be %3.2f kW',P)    
