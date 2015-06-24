//Example 12.5 //rate of flow oin pipe line
clc;
clear;
D1=0.4;//diameter of pipe at inlet
A1= (%pi/4)*D1^2;//area of inlet in meter square
D2=0.2;//throat diameter in meter
A2=(%pi/4)*D2^2;//area of throat in meter square
y=0.05;//reading of the differntial manometer in meter
Shl=13.6;//SPECIFIC GRAVITY OF HEAVY LIQUID
Sp=0.7;//SPECIFIC GRAVITY OF OIL FLOWING THE PIPELINE
h=y*((Shl/Sp)-1);//differntial pressure head in meter
g=9.81;//assume
V2=sqrt(h/((1/(2*g))-(1/(32*g))));//
V1=(A2*V2)/A1;//
Q=A2*V2;//
disp(Q,"rate of flow of oil in m^3/s is")

