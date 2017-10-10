//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.2
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ib=40;//current of the motor in ampere
Rb=2;//braking resistance in ohm
Ra=0.377;//armature resistance in ohm
KQ=3.93;//field constant
omega=-(Ib*(Ra+Rb))/KQ;//angular speed in rad/sec
se=60;//seconds in 1 minute
n=omega*(se/(2*%pi));
mprintf("The speed at steady state operating point in rpm is %f",n)
