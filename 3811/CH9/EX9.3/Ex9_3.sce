//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.3
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ra=.5;//armature resistance in ohm
KQ=3;//field constant
V=277;//source voltage in volt
Tup=100;//upward directional load torque in Nm
a=20;//triggering angle in degree
Tdw=200;//downward directional load torque in Nm 
Vm=V*sqrt(2);
Veq=((2*Vm)/%pi)*cosd(a);
omega1=((Veq/KQ))-((Ra*Tup)/KQ^(2));
n1=omega1*(60/(2*%pi));//downward speed in rpm
b1=((-KQ*omega1)+((Ra*Tdw)/KQ))/((2*Vm)/%pi);
alpha2=acosd(b1);
mprintf("The triggering angle required to keep the downward speed equal in magnitude to the upward speed in degree is %f",alpha2)
