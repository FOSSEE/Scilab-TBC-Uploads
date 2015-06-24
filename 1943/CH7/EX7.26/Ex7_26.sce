

clc
clear
//Input data
V1=600//Velocity in m/s
Vb=120//Mean blade velocity in m/s
a=16//Nozzle angle in degrees
b=[18,21,35]//Exit angles in degrees
m=5//Steam flow rate in kg/s
h=25//Nozzle height in mm
v=0.375//Specific volume in m^3/kg
p=25//Pitch in mm
t=0.5//Thickness in mm
kb=0.9//Constant

//Calculations
l=((m*v)/(sind(a)*V1*(h/1000)*kb))//Length of the nozzle arc in m //Length of the nozzle arc is calculated wrong as 0.454m instead of 0.5 m
b1= atand((V1*sind(a))/((V1*cosd(a))-Vb))//Angle in degrees
Vr1=((V1*sind(a))/sind(b1))//Velocity in m/s
Vr2=kb*Vr1//Velocity in m/s
V2=sqrt(Vr2^2+Vb^2-2*Vr2*Vb*cosd(b(1)))//Velocity in m/s
V3=291//Velocity in m/s
b3=atand((V3*sind(b(2)))/((V3*cosd(b(2)))-Vb))//Angle in degrees
Vr3=((V3*sind(b(2)))/sind(b3))//Velocity in m/s
Vr4=(Vr3*kb)//Velocity in m/s
hb1=((m*v*(h/1000))/(l*((p/1000)*sind(b(1))-(t/1000))*Vr2))*1000//Height in mm
hn=((m*v*(h/1000))/(l*((p/1000)*sind(b(2))-(t/1000))*V3))*1000//Height in mm
hb2=((m*v*(h/1000))/(l*((h/1000)*sind(b(3))-(t/1000))*Vr4))*1000//Height in mm

//Output
printf('Blade heights at the exit of each row: \n First row of moving blades is %3.1f mm \n Fixed row of guide blades is %3.1f mm \n Second row of moving blades is %3.1f mm',hb1,hn,hb2)
