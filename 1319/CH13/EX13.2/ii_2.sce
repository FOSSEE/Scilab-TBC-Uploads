// Computing InstantaneousInduced EMF
clc;
clear;

l=0.2;
n=1000;
b=0.5;
r=l/2;
t=200;

//Number of conductors
c=2*t;

//Velocity Equation.
v=2*(%pi)*r*1000/60;

// Angles
x=90;
y=30;
z=0;

// EMFs

e1=c*b*l*v*(sind(90-x));
e2=c*b*l*v*(sind(90-y));
e3=c*b*l*v*(sind(90-z));

disp('volts',e1,'i)  The Induced EMF perpendicular to the field')
disp('volts',e2,'ii) The Induced EMF at an angle 30 degrees to the field')
disp('volts',e3,'iii)The Induced EMF parallel to the field')
