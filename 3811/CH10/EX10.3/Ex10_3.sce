//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 10
//example 10.3
//edition 1
//publishing place:Thomson Learning
clc;
clear;
n1=1150;//full load speed in rpm
V=300;//terminal voltage in volt
f=80;//frequency in Hz
Rr=0.5;//rotor resistance of the motor in ohm
Xeq=3;//equivalent inductive reactance in ohm
ns=1200;//nearest synchronous speed in rpm
rpss=ns/60;
omegas=(2*%pi*rpss);
s1=(ns-n1)/ns;
T6=(V^(2)*s1)/(omegas*Rr);//torque at the point 6
T6=ceil(T6);
mprintf("\nThe torque developed is %d Nm",T6)//approximated value
s6=(T6*Rr*(-omegas))/V^(2);
mprintf("\nThe slip is %f",s6)
n6=(-ns)*(1-s6);
mprintf("\nThe current of the induction motor does not surge to high value when the concurrent braking is implemented")

