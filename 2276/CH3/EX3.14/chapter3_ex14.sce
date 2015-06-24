clc
clear

//input
v=240;//voltage of a d.c. shunt motor in volts
ra=0.4;//armature resistance of d.c. shunt motor in ohms
rf=120;//armature resistance of d.c. shunt motor in ohms
is=22;//supply current in amperes
w=600;//angular velocity of motor in rev/min
il=30;//load current in amperes

//calculations
//armature reaction is neglected
W=(w*(2*%pi))/60;//angular velocity in rad/s
fi=v/rf;//feild current in amperes
ai=is-fi;//armature current in amperes
e=v-(ai*ra);//e.m.f. in volts
t1=(e*ai)/W;//torque when current is 20A in newton meter
aI=il-fi;//changed armature current in amperes
t2=t1*(aI/is);//torque when current is 30A in newton meter

//output
mprintf('with a supply current of 30A the motor produces a total torque of %3.1f Nm',t2)
