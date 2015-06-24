clc
clear
//input data
D2D1=2//The ratio of outer and inner diameter 
N=1200//The running speed of pump in rpm
Hm=75//Total head producing work in m
Cr1=3//Flow velocity through impeller at inlet in m/s
Cr2=Cr1//Flow velocity through impeller at outlet in m/s
b22=30//Vanes set back angle at outlet in degree
D2=0.6//Outlet diameter of impeller in m
d=1000//Density of water in kg/m^3
b2=0.05//Width of impeller at outlet in m
g=9.81//Acceleartion due to gravity in m/s^2

//calculations
D1=D2/D2D1//Inlet diameter of impeller in m
U1=(3.1415*D1*N)/60//Impeller tip speed at inlet in m/s
b11=atand(Cr1/U1)//Vane angle at inlet in degree
U2=(3.1415*D2*N)/60//Impeller tip speed at exit in m/s
A=3.1415*D2*b2//Area of flow in m^2
Q=A*Cr2//Discharge of the pump in m^/s
m=d*Q//Mass flow rate of water in kg/s
Wx2=Cr2/tand(b22)//Exit relative velocity in m/s
Cx2=U2-Wx2//Absolute whirl component at exit in m/s
W=m*U2*Cx2*10^-3//Work done per second in kW
nm=Hm/((U2*Cx2)/g)//Manometric efficiency 

//output
printf('(a)Vane angle at inlet is %3.3f degree\n(b)Work done per second is %3.2f kW\n(c)Manometric efficiency is %3.4f',b11,W,nm)
