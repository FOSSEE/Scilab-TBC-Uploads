clc
clear

//input
n1=4;//number of poles in a aeries motor
v=240;//voltage of the series motor in volts
n2=348;//number of conductors in the armature which is wave connected
r=0.8;//resistance in ohms
i=45;//current taken by the motor in amperes
phi=0.028;//flux/pole in weber
outP=8200;//output power in watts

//calculations
t=(phi*n2*2*i)/(2*%pi);//since wave winding 2 is taken and the torque in newton meter
e=v-(i*r);//e.m.f. induced in volts
ap=e*i;//armature power in watts
w=(ap/t);//angular velocity in rad/s
st=outP/w;//shaft torque in newton meter

//output
mprintf('the total torque and the shaft torque produced by the motor are %3.0f Nm and %3.0f Nm',t,st)
