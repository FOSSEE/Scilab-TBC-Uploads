clc
clear

//input
v=250;//voltage of a d.c. shunt motor in volts
ra=0.4;//armature resistance of a d.c. shunt motor in ohms
rf=250;//field resistance of a d.c. shunt motor in ohms
t=80;//total torque in newton meter
w=75;//velocity in rad/s
ml=0.1;//mechanical losses in per units

//calculations
ap=t*w;//armature power in watts
//(ia^2)-625ia+15000=0 will be the equation obtained from the e.m.f. equation
//(-ia+25)(ia-600)=0 is simplified equation
ai=25;//armature current in amperes as 600A armature current is inadmissable
fi=v/rf;//field current in amperes
inpI=ai+fi;//input current in amperes
inpP=v*inpI;//power input in watts
outP=0.9*t*w;//output power in watts and 0.9 is used after considering the 10% mechanical losses
n=outP/inpP;//overall effeciency in p.u.

//output
mprintf('for the loading condition the overall efficiency is %3.3f p.u.',n )
