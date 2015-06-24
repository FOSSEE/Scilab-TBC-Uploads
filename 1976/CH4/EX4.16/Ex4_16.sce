
//To determine the speed and torque of a single phase full converter
//Page 241
clc;
clear;
P=5*735.5; //Power Rating
Vr=220; //Rated Voltage
N=1500; //Rated Speed

Ra=0.25; //Armature Resistance
Ia=20; //Rated Armature Current
Vs=250; //Supply Voltage
Kaphi=0.0278; //Motor Voltage Constant
a=30; //Firing Angle

Va=2*sqrt(2)*Vs*cosd(a)/%pi; //Armature Voltage
Eb=Va-(Ia*Ra); //Back EMF
w=Eb/(Kaphi*60); //Angular Frequency in Radians per second
Ta=Kaphi*Ia*60; //Torque

printf('The Speed and Torque of the Single Phase Full Converter are %g rad/s and %g Nm respectively\n',w,Ta)

