//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 6
//example 6.5
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
L=1;//load of shunt motor in hp
T=10;//constant torque of motor in Nm
Ra=5;//armature resistance of the motor in ohm
KQ=2.5;//The field constant in V sec
V=120;//source voltage in volt
f=60;//supply frequency in Hertz
a=60;//trigerring angle of the converter in degree
b=150;//conduction period in degree
Iave=T/KQ;//average current in amphere
Vm=V*2^(1/2);
W=((Vm/%pi)*(cosd(a)-cosd(b+a))-(Iave*Ra))/((b/180)*KQ);//angular speed of the motor
n=W*(60/(2*%pi));
mprintf("\nThe speed of the motor is %f rpm",n)
Pd=KQ*W*Iave;//power developed by the motor
mprintf("\nThe power developed by the motor is %f watt",Pd)
