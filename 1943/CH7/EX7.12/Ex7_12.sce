
clc
clear
//Input data
p1=15//Pressure in bar
T1=300+273//Temperature in K
p2=10//Pressure in bar
nn=95//Nozzle efficiency in percent
a=20//Nozzle angle in degrees
x=5//The blade exit angle is 5 degrees less than the inlet angle
f=0.9//Friction factor
m=1350//Steam flow rate in kg/h

//Calculations
h1=3038.9//Enthalpy in kJ/kg
s1=6.9224//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
t2s=250//Temperature in degree C
h2s=2943.1//Enthalpy in kJ/kg
V1=44.72*sqrt((nn/100)*(h1-h2s))//Velocity in m/s
Vb=V1*(cosd(a)/2)//Velocity in m/s
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Blade angle in degrees
b2=b1-x//Blade angle in degrees
Vr1=((V1*sind(a))/sind(b1))//Velocity in m/s
Vr2=(f*Vr1)//Velocity in m/s
dVw=(Vr1*cosd(b1))+(Vr2*cosd(b2))//Velocity in m/s
dVa=(Vr1*sind(b1))-(Vr2*sind(b2))//Velocity in m/s
Pa=(m/3600)*dVa//Axial thrust in N
Pt=(m/3600)*dVw//Tangential thrust in N
WD=(Pt*Vb*10^-3)//Diagram Power in kW
dn=((WD*1000)/((1/2)*(m/3600)*V1^2))*100//Diagram efficiency in percent

//Output
printf('(a) Axial thrust is %3.2f N \n  Tangential thrust is %3.2f N \n\n (b) Diagram Power is %3.3f kW \n\n (c) Diagram Efficiency is %3.1f percent',Pa,Pt,WD,dn)
