//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.5
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ra=1;//armature resistance in ohm
KQ=3;//field constant
V=320;//Terminal voltage in volts
n=1000;//motor speed in rpm
omega=(2*%pi*n)/60;
Ea1=KQ*omega;
Ia=(V-Ea1)/Ra;//normal field current in ampere
Ib=2*Ia;//maximum braking current which is twice the armature voltage in A
Rb=-(V+Ea1+(Ib*Ra))/Ib;//braking resistance
Rb=abs(Rb);
mprintf("The maximum braking resistance in ohm is %f",Rb)
//the answer given in the book is wrong

