//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.7
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ra=1;//armature resistance in ohm
KQ=3;//field constant
V=480;//Terminal voltage in volts
Tl=120;//load torque in Nm
Vm=V*sqrt(2);
Iave1=Tl/KQ;
omega3=0;//motor speed at holding condition
Iave3=-Iave1;
b1=((KQ*omega3)+(Ra*Iave3))/-((2*Vm)/%pi);
alpha2=acosd(b1);
mprintf("The triggering angle for scr 3 and 4 in degree is %f",alpha2)
