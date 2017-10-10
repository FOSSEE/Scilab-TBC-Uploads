//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.8
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ra=0.5;//armature resistance in ohm
KQ=3;//field resistance 
V=200;//source voltage in volt
T=180;//troque of the forklift in Nm
V1=-30;//terminal voltage of the motor in volt
omega5=((V1/KQ))-((Ra*T)/KQ^(2));
se=60;//seconds in one minute
n5=omega5*(se/(2*%pi));//new steady state speed at point 5 in rpm
mprintf("The new steady state speed in is %f rpm",n5)
I5=(V1-(KQ*omega5))/Ra;//current at point 5
mprintf("\n The armature current at new speed in is %d A",I5)
