//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 6
//example 6.6
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
T=60;//Constant load torque in Nm
V=120;//supply voltage in volt
KQ=2.5;//Field constant of the motor 
Ra=2;//Armature resistance in ohm
n=200;//speed of the motor in rpm
Vm=V*2^(1/2);//maximum voltage in volt
w=(2*%pi*n)/T;//angular speed
Iave=T/KQ;
b=((%pi/(2*Vm))*((Ra*Iave)+(KQ*w)));
alpha=acosd(b);
mprintf("\nThe triggering angle of the motor is  %f degree",alpha)
