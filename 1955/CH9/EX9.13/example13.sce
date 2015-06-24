clc
clear
//input data
H=30//Working head of the turbine in m
D1=1.2//Inlet wheel diameter in m
D2=0.6//Outlet wheel diameter in m
b11=90//Vane angle at entrance in degree
a11=15//Guide blade angle in degree
Cx2=0//Velocity of whirl at inlet in m/s
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
U11=1/tand(a11)//Runner tip speed at inlet in m/s in terms of Cr1
Cr1=(H/((U11^2/g)+(1/(2*g))))^(1/2)//Flow velocity at inlet in m/s
Cr2=Cr1//Flow velocity at outlet in m/s
U1=Cr1*U11//Runner tip speed at inlet in m/s  
N=(60*U1)/(3.1415*D1)//Speed of the wheel in rpm
U2=(3.1415*D2*N)/60//Runner tip speed at inlet in m/s 
b22=atand(Cr2/U2)//Vane angle at exit in degree

//output
printf('(a)Speed of the wheel is %3.2f rpm\n(b)Vane angle at exit is %3.2f degree',N,b22)
