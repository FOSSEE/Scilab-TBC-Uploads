//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.6
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ra=1;//armature resistance in ohm
KQ=3;//field constant
V=480;//Terminal voltage in volts
Tl=120;//load torque in Nm
alpha=30;//triggering angle of SCR 1 and 2
Vm=V*sqrt(2);
Iave1=Tl/KQ;
omega1=(((2*Vm)/%pi)*cosd(alpha)-(Iave1*Ra))/KQ;
se=60;//seconds in one minute
n1=(omega1*se)/(2*%pi);
Ib=-3*Iave1;
b1=-((KQ*omega1)-(3*Iave1))/((2*Vm)/%pi);
alpha2=acosd(b1);
mprintf("The triggering angle for scr 3 and 4 to reduce the minimum braking current in degree is %f",alpha2)
