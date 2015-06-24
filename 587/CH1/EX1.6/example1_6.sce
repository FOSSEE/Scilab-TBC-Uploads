clear;
clc;

//Example1.6 (Measuring the Thermal Conductivity of a Material)
V=110;//Voltage diffrence b/w thermocouples[V]
I=0.4;//Current drawn by thermocouples[A]
We=V*I;//[W]
disp("W",We,"The electrical power consumed by the resistance heater and converted to heat is")
q_=We/2;//[W]
disp("W",q_,"The rate of heat flow through each sample")
dT=15;//Temperature drop in the direction of heat flow[degree C]
l=.03;//length for which temperature change is measured[m]
D=.05;//diameter of cylinder[m]
a=(%pi*D^2)/4;//Cross-sectional area of the cylinder[m^2]
K=(q_*l)/(a*dT);//[W/m.degreeC]
disp("W/mC",K,"The thermal conductivity of the sample is")
