clc
clear
//input data
Dt=1//Impeller outlet diameter in m
Dh=0.5//Diameter of the boss in m
Ns=38//Specific speed of the pump 
Ca=2//Velocity of the flow in m/s
H=6//Head which the pump has to drive in m

//calculations
A=(3.1415/4)*(Dt^2-Dh^2)//Area of flow in m^2
Q=A*Ca//Discharge of the pump in m^3/s
N=(Ns*H^(3/4))/(Q^(1/2))//Pump speed in rpm
U1=(3.1415*Dh*N)/60//Blade inlet speed in m/s
b1=atand(Ca/U1)//Vane angle at the entry of the pump when the flow is axial at inlet in degree

//output
printf('(a)Pump speed is %3.3f rpm\n(b)Vane angle at the entry of the pump when the flow is axial at inlet is %3.2f degree',N,b1)
