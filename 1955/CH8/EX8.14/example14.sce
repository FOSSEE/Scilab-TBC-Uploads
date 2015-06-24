clc
clear
//input data
D1=0.6//Inlet impeller diameter in m
D2=1.2//Outlet impeller diameter in m
Cr2=2.5//Radial flow velocity in m/s
N=200//Running speed of the pump in rpm
Q=1.88//Discharge of the pump in m^3/s
Hm=6//Head which the pump has to overcome in m
b22=26//Vane angle at exit at tangent to impeller in degree
d=1000//Density of the water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2

//calculations
U2=(3.1415*D2*N)/60//Outlet tangential impeller velocity in m/s
Wx2=Cr2/tand(b22)//Exit relative velocity in m/s
Cx2=U2-Wx2//Absolute whirl velocity in m/s
nm=(Hm/(U2*Cx2/g))//Manometric efficiency 
Nls=((2*g*Hm*60^2)/((3.1415^2)*((1.2^2)-(0.6^2))))^(1/2)//Least starting speed of the pump in rpm

//output
printf('(1)Manometric efficiency is %3.3f\n(2)Least speed to start the pump is %3.2f rpm',nm,Nls)
