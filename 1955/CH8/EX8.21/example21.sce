clc
clear
//input data
Q=0.180//Discharge of the pump in m^3/s
H=2//Head developed by the pump in m
Ns=250//Specific speed of the pump 
SR=2.4//Speed ratio of the pump
FR=0.5//Flow ratio of the pump
g=9.81//Acceleration due to gravity in m/s^2

//calculations
N=(Ns*(H^(3/4)))/(Q^(1/2))//Pump speed in rpm
U=SR*(2*g*H)^(1/2)//Peripheral velocity in m/s
D=(60*U)/(3.1415*N)//Runner diameter of the pump in m
Ca=FR*(2*g*H)^(1/2)//Velocity of flow in m/s
Dh=((D^2)-(Q*4/(Ca*3.14)))^(1/2)//Boss diameter of the pump in m

//output
printf('(a)Pump speed is %3.i rpm\n(b)Runner diameter of the pump is %3.2f m\n(c)Boss diameter of the pump is %3.2f m\n',N,D,Dh)
