
clc
clear
//Input data
R=50//Percentage of reaction
b1=35//Angle in degrees
q=b1//Angle in degrees
b2=20//Angle in degrees
a=b2//Angle in degrees
N=1500//Speed in rpm
d=0.67//Mean diameter in m
p=1.5//Pressure in bar
x=0.96//Dryness fraction
w=3.6//Flow rate in kg/s

//Calculations
Vb=(3.14*d*N)/60//Velocity in m/s
V1=(Vb*(sind(180-b1)/sind(b1-b2)))//Veocity in m/s
Vr1=(Vb*(sind(b2)/sind(b1-b2)))//Velocity in m/s
dVw=(V1*cosd(a))+(Vr1*cosd(q))//Velocity in m/s
v1=(0.001052+x*1.15937)//Specific volume in m^3/kg
hb=((w*v1)/(3.14*d*V1*sind(a)))*1000//Required height in mm
P=(w*dVw*Vb)/1000//Power developed in kW

//Output
printf('(a) the required height of blading is %3.1f mm \n (b) the power developed by the ring is %3.3f kW',hb,P)
