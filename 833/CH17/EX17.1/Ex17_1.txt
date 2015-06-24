//Caption:Find (a)Speed (b)Power factor of motor
//Exa:17.1
clc;
clear;
close;
r=25//Resistance of motor(in ohms)
P=2//Number of poles
l=0.4//Inductance of motor(in henry)
n=1800//Speed of motor(in r.p.m)
V=230//Voltage supplied(in volts)
Il=1//Load current(in A)
f=50//Frequency(in hertz)
fr=(P*n)/120
Eb=V-(r*Il)
Er=Eb/fr
fac=(sqrt((V^2)-((Il*2*(%pi)*f*l)^2))-(Il*r))/Er
n=fac*(120/P)
disp(n,'(a)Speed(in rpm)=')
pf=sqrt((V^2)-((Il*2*(%pi)*f*l)^2))/V
disp(pf,'(b)Power factor=')