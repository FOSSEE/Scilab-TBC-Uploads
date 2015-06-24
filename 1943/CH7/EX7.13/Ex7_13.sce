
clc
clear
//Input data
V1=600//Velocity in m/s
a=16//Nozzle angle in degrees
Vb=120//Mean blade angle in degrees
b2=18//Exit angle in degrees
aa1=22//Exit angle in degrees
b4=36//Exit angle in degrees
m=5//Steam flow rate in kg/s
f=0.85//Friction coefficient

//Calculations
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Exit angle in degrees
Vr1=((V1*sind(a))/sind(b1))//Velocity in m/s
Vr2=(f*Vr1)//Velocity in m/s
a1=atand((Vr2*sind(b2))/((Vr2*cosd(b2))-Vb))//Angle in degrees
V2=((Vr2*sind(b2))/sind(a1))//Velocity in m/s
V3=(f*V2)//Velocity in m/s
dVw1=(Vr1*cosd(b1))+(Vr2*cosd(b2))//Velocity in m/s
dVa1=(V1*sind(a))-(V2*sind(a1))//Velocity in m/s
b3=atand((V3*sind(aa1))/((V3*cosd(aa1))-Vb))//Angle in degrees
Vr3=((V3*sind(aa1))/sind(b3))//Velocity in m/s
Vr4=(f*Vr3)//velocity in m/s
dVw2=(Vr3*cosd(b3))+(Vr4*cosd(b4))//Velocity in m/s
dVa2=(V3*sind(aa1))-(Vr4*sind(b4))//Velocity in m/s
udVw=(dVw1+dVw2)//Total velocity in m/s
udVa=(dVa1+dVa2)//Total velocity in m/s
Pt=(m*udVw*10^-3)//tangential thrust in kN
Pa=(m*udVa*10^-3)//Axial thrust in kN
WD=(Pt*Vb)//Power developed in kW
nd=((2*udVw*Vb)/V1^2)*100//Diagram efficiency in percent

//Output
printf('(a) the tangential thrust is %3.3f kW \n (b) Axial thrust is %3.2f kN \n (c) Power developed is %3.2f kW \n (d) Diagram efficiency is %3.2f percent',Pt,Pa,WD,nd)
