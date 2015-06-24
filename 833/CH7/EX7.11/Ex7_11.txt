//Caption: Calculate Power and torque developed
//Exa:7.11
clc;
clear;
close;
p=4//Number of poles
d=20//Diameter of armature(in cm)
l=25//Core length(in cm)
c=300//Number of conductors
i_a=50//Armature current(in A)
B=0.3//Average flux density(in weber/m^2)
n=1000//Speedofmotor(in r.p.m)
T=(B*(l/100)*(i_a/p)*c*(d/100)*(1/2))
s=(2*%pi*n)/(60)
P=(T*s)/1000
disp(T,P,'Power(in KW) and Torque(in Nm) developed is=')