//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.4
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ra=.5;//armature resistance in ohm
KQ=3;//field constant
V=277;//source voltage in volt
Tup=100;//upward directional load torque in Nm 
Vm=V*sqrt(2);
b1=((Ra*Tup)/KQ)/((2*Vm)/%pi);
alpha3=acosd(b1);//triggering angle at the upward motion 
mprintf("The triggering angle at the motor changes during the upward motion to keep the motor constant in degree is %f",alpha3)
