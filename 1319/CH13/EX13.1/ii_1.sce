// Computing Induced EMF
clc;
clear;

l=0.5;
v=50;
b=1;

// Angles
x=90;
y=30;
z=0;

// EMFs

e1=b*l*v*(sind(x));
e2=b*l*v*(sind(y));
e3=b*l*v*(sind(z));

disp('volts',e1,'i)  The Induced EMF perpendicular to the field')
disp('volts',e2,'ii) The Induced EMF at an angle 30 degrees to the field')
disp('volts',e3,'iii)The Induced EMF parallel to the field')
