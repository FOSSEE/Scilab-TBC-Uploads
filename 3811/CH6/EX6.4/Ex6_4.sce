//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 6
//example 6.4
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
Iave=T/KQ;//average current in ampere
Vm=V*2^(1/2);
W=((Vm/(2*%pi))*(cosd(a)-cosd(b+a))-(Iave*Ra))/((b/360)*KQ);//angular speed of the motor
n=W*(f/(2*%pi));
disp(n,'The speed of the motor in rpm is:')
Pd=KQ*W*Iave;//power developed by the motor
disp(Pd,'The power developed by the motor in terms of watt is:')
