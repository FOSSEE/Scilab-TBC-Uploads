clc
clear

//input
v=250;//voltage of shunt motor in volts
ra=0.2;//armature resistance of shunt motor in ohms
rf=250;//feild resistance of shunt motor in ohms
w=75;//velocity of shunt motor in rad/sec
i1=21;//current taken by the motor in amperes
i2=60;//changed current in amperes

//calculations
fi=v/rf;//feild current in amperes
ai=i1-fi;//armature current in amperes
e1=v-(ai*ra);//induced e.m.f. in volts
e2=v-(i2*ra);//induced e.m.f. for changed current in volts
W=w*(e2/e1);//new speed in rad/sec

//ouput
mprintf('with an armature current of 60A the motor speed will be %3.1f rad/s ',W) 
