clc
clear
//input data
C1=500//Steam velocity in m/s
U=200//Blade speed in m/s
b2=(90-25)//Exit angle of moving blade measured in axial direction in degree
a1=(90-20)//Nozzle angle in axial direction in degree
m=5//Steam flow rate in kg/s

printf('The scale of the velocity vector diagram is 1:50\n\nThe following values are obtained from the velocity vector diagram')

b1=33//Moving blade inlet angle in degree
a2=56//Direction of steam at the exit in degree
C2=160//Exit velocity of the steam in m/s
Wx1=270//Inlet whirl velocity in m/s
Wx2=285//Exit whirl velocity in m/s
Ca1=175//Inlet axial velocity in m/s
Ca2=135//Exit axial velocity in m/s

//calculations
Wm=U*(Wx1+Wx2)*10^-3//Work done per kg of steam in kW/kg
AT=m*(Ca1-Ca2)//Axial thrust in N
W=m*Wm//Power developed in kW
Ndia=((U*(Wx1+Wx2))/((C1^2)/2))//Diagram or blade efficiency 

//output
printf('\n\n(a)Moving blade inlet angle is %3i degree\n(b)\n    Exit velocity of the steam is %3i m/s\n    Direction of steam at the exit is %3i degree\n(c)Work done per kg of steam is %3i kW/kg\n(d)\n    Axial thrust is %3i N\n    Power developed is %3i kW\n(e)Diagram or blade efficiency is %3.3f',b1,C2,a2,Wm,AT,W,Ndia)
