clc
clear

//input
v=240;//voltage of a d.c. series motor in volts
rm=0.2;//resistance of the motor in ohms
w=80;// velocity of motor in rad/s
i1=20;//current in amperes
i2=30;//changed current in the armature in amperes

//calculations
//it is assumed that flux/pole is proportional to the field current
e1=v-(i1*rm);//e.m.f. induced in volts when the current is 20 A
e2=v-(i2*rm);//e.m.f. induced in volts when the current is 30 A
W=(e2/e1)*(i1/i2)*w;//final velocity in rad/s

//output
mprintf('with the increased current the motor will run with a velocity of %3.2f rad/s',W)
