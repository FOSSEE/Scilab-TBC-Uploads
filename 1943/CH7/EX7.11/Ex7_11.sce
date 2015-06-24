
clc
clear
//Input data
d=800//Diameter in mm
N=3000//Speed in rpm
V1=300//Velocity in m/s
a=20//Nozzle angle in degrees
f=0.86//Frictional factor
T=140//Axial thrust in N

//Calculations
Vb=((3.14*(d/1000)*N)/60)//Velocity in m/s
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Blade angle in degrees
b2=b1//Blade angle in degrees
Vr1=(V1*sind(a))/sind(b1)//Velocity in m/s
Vr2=f*Vr1//Velocity in m/s
w=(T/((Vr1*sind(b1))-(Vr2*sind(b2))))//Mass flow rate in kg/s
dVw=(Vr2*cosd(b2))+(Vr1*cosd(b1))//Velocity in m/s
P=(w*dVw*Vb*10^-3)//Power developed in kW

//Output
printf('Power deveoped in the blading is %3.2f kW',P)
