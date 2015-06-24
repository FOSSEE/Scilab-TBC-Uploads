clc
clear
//input data
Q=75//Discharge from the pump in l/s
D1=0.1//Inlet diameter of the pump in m
D2=0.29//Outlet diameter of the pump in m 
Hm=30//Total head producing work in m
N=1750//Speed of the pump in rpm
b1=0.025//Width of impeller at inlet per side in m
b2=0.023//Width of impeller at outlet in total in m
a11=90//The angle made by the entering fluid to impeller in degree
b22=27//Vanes set back angle at outlet in degree
Qloss=2.25//Leakage loss in l/s
ml=1.04//Mechanical loss in kW
cf=0.87//Contraction factor due to vane thickness 
n0=0.55//Overall efficiency
d=1000//Density of water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2

//calculations
U1=(3.1415*D1*N)/60//Blade inlet speed in m/s
A1=3.1415*D1*b1*cf*10^3//Area of flow at inlet in m^2
Qt=Q+Qloss//Total quantity of water handled by pump in l/s
Qts=Qt/2//Total quantity of water handled by pump per side in l/s
Cr1=(Qts*10^-3)/(A1*10^-3)//Flow velocity through impeller at inlet in m/s
b11=atand(Cr1/U1)//Inlet vane angle in degree
A2=3.1415*D2*(b2/2)*cf*10^3//Area of flow at outlet in m^2 here b2 is calculated per side
Cr2=Qts/A2//Velocity of flow at outlet in m/s
U2=(3.1415*D2*N)/60//Peripheral speed at outlet in m/s
Wx2=Cr2/tand(b22)//Exit relative velocity in m/s
Cx2=U2-Wx2//Absolute whirl component at exit in m/s
a22=atand(Cr2/Cx2)//The absolute water angle at outlet in degree
C2=Cr2/sind(a22)//Absolute velocity of water at exit in m/s
nh=Hm/((U2*Cx2)/g)//Manometric efficiency 
nv=Q/Qt//Volumetric efficiency 
SP=(d*g*(Q*10^-3/2)*Hm)/n0*10^-3//Shaft power in kW
nm=(SP-ml)/SP//Mechanical efficiency 

//output
printf('(a)Inlet vane angle is %3.2f degree\n(b)The absolute water angle is %3.2f degree\n(c)Absolute velocity of water at exit is %3.2f m/s\n(d)Manometric efficiency is %3.3f\n(e)Volumetric efficiency is %3.4f\n(f)Mechanical efficiency is %3.3f',b11,a22,C2,nh,nv,nm)
