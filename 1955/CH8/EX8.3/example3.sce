clc
clear
//input data
D2=0.4//Outer diameter of impeller in m
b2=0.05//Outlet width of impeller in m
N=800//Running speed of pump in rpm
Hm=16//Working head of pump in m
b22=40//Vane angle at outlet in degree
nm=0.75//Manometric efficiency 
g=9.81//Acceleration due to gravity in m/s^2

//calculations
U2=(3.1415*D2*N)/60//Impeller tip speed in m/s
Cx2=(g*Hm)/(U2*nm)//Absolute whirl component at exit in m/s
Wx2=U2-Cx2//Exit relative velocity in m/s
Cr2=Wx2*tand(b22)//Flow velocity of water in pump in m/s
A=3.14*D2*b2//Area of flow in m^2
Q=A*Cr2//Discharge of the pump in m^3/s

//output
printf('The discharge of the pump is %3.4f m^3/s',Q)
