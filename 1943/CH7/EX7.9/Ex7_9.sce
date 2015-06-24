
clc
clear
//Input data
V1=1000//Speed in m/s
Vb=400//Peripheral velocity in m/s
a=20//Nozzle angle in degree
m=0.75//Mass flow in kg/s
f=80//Percentage reduction of relative velocity

//Calculations
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Blade angle in degree
V=342//Velocity from E7.9 in m/s
Vr1=V/sind(b1)//Velocity in m/s
dVw=(2*Vr1*cosd(b1))//Velocity in m/s
Pt=(m*dVw)//Tangential thrust in N
WD=(Pt*Vb)/1000//Diagram power in kW
nD=(WD/(0.5*m*V1^2*10^-3))*100//Diagram efficiency in percent
Pa=0//Axial thrust in N
Vr2=(f/100)*Vr1//Velocity in m/s
Pa2=m*sind(b1)*(Vr1-Vr2)//Axial thrust in N
WD2=(m*(Vr1+Vr2)*cosd(b1)*Vb)/1000//Diagram power in kW
nD2=(WD2/(0.5*m*V1^2*10^-3))*100//Diagram efficiency in percent

//Output
printf('Blade Angle is %3.2f degrees \n\n Neglecting the friction effects \n Tangential force is %3.2f N \n Axial thrust is %i N \n Diagram efficiency is %3.1f percent \n\n Considering the friction effects \n Axial thrust is %3.1f N \n Diagram Power is %3.2f kW \n Diagram efficiency is %3.2f percent',b1,Pt,Pa,nD,Pa2,WD2,nD2)
