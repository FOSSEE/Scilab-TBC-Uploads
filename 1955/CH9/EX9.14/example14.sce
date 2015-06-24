clc
clear
//input data
D1=0.6//Internal runner diameter in m
D2=1.2//External runner diameter in m
a11=15//Guide blade angle in degree
Cr1=4//Flow velocity at inlet in m/s
Cr2=Cr1//Flow velocity at outlet in m/s
N=200//Speed of the turbine in rpm
H=10//Head of the turbine in m
a22=90//Discharge angle at outlet in degree
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
U1=(3.1415*D1*N)/60//Runner tip speed at inlet in m/s 
U2=(3.1415*D2*N)/60//Runner tip speed at outlet in m/s 
Cx1=Cr1/tand(a11)//Velocity of whirl at inlet in m/s
Wx1=Cx1-U1//Inlet whirl velocity component in m/s
b11=atand(Cr1/Wx1)//Vane angle at entrance in degree
b22=atand(Cr2/U2)//Vane angle at exit in degree
Wm=U1*Cx1//Work one per unit mass flow rate in W/(kg/s)     as Cx2=0 in m/s
nH=(U1*Cx1/(g*H))//Hydraulic efficiency 

//output
printf('(a)\n    Inlet vane angle is %3.2f degree\n    Outlet vane angle is %3.2f degree\n(b)Work done by the water on the runner per kg of water is %3.2f W/(kg/s)\n(c)Hydraulic efficiency is %3.4f',b11,b22,Wm,nH)
