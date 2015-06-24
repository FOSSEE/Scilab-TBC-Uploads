
clc
clear
//Input data
N=400//Speed in rpm
P=5//Power in MW
m=6//Flow rate in kg/kWh
b2=20//Blade angle in degrees
a=b2//Angle in degrees
x=1.35//Velocity ratio
p=1.2//Pressure in bar
x1=0.95//Steam quality 
Dh=12//Ratio of Dm and hb

//Calculations
w=(m*P*1000)/3600//Mass flow rate in kg/s
v1=(0.0010468+x1*1.454)//Specific volume in m^3/kg
hb=((w*v1)/(Dh*3.14*x*((Dh*N)/60)*3.14*sind(a)))^(1/3)*1000//Blade height in mm
Vb=((3.14*Dh*(hb/1000)*N)/60)//velocity in m/s
V1=(x*Vb)//Velocity in m/s
dVw=((2*V1*cosd(a))-Vb)//velocity in m/s
WD=(w*dVw*Vb*10^-3)//Diagram power in kW

//Output
printf('(a)Blade height is %3.0f mm \n (b) the diagram power is %3.2f kW',hb,WD)
