clc
clear
//input data
r1=0.051//Eye radius of the impeller in m
D2=0.406//Outer diameter of the impeller in m
b11=(90-75)//Inlet blade angle measured from tangential flow direction in degree
b22=(90-83)//Outlet blade angle measured from tangential flow direction in degree
b=0.064//Blade depth in m
Cx1=0//Inlet whirl velocity in m/s
nh=0.89//Hydraulic efficiency 
g=9.81//Acceleration due to gravity in m/s^2
d=1000//Density of water in kg/m^3
N=900//Rotating speed of impeller in rpm

//calculations
w=(2*3.1415*N)/60//Angular velocity at inlet in rad/s
U1=(w*r1)//Inlet tangential impeller velocity in m/s
C1=U1*tand(b11)//Velocity at impeller inlet in m/s
A=2*3.1415*r1*b//Area of flow through the pump in m^2
Cr1=C1//Flow velocity through impeller at inlet in m/s
Q=A*Cr1//Volume flow through the pump in m^3/s
r2=D2/2//Outer radius of the impeller in m
Cr2=(r1*Cr1)/r2//Flow velocity through impeller at outlet in m/s
U2=w*r2//Outlet tangential impeller velocity in m/s
Wx2=Cr2/tand(b22)//Exit relative velocity in m/s
E=(U2/g)*(U2-Wx2)//Theoretical head developed in m
Hm=nh*E//Total stagnation head developed by the pump in m
dP021=Hm*d*g*10^-3//Total pressure head coefficient in kPa
Cx2=U2-(Cr2/tand(b22))//Absolute whirl velocity in m/s
C2=(Cr2^2+Cx2^2)^(1/2)//Velocity at impeller exit in m/s
dP21=(Hm-(((C2^2)-(C1^2))/(2*g)))*d*g*10^-3//The static pressure head in kPa
P=d*g*Q*Hm*10^-3//Power given to the fluid in kW
Ps=P/nh//Input power to impeller in kW

//output
printf('(a)Volume flow rate through the impeller is %3.4f m^3/s\n(b)\n    stagnation pressure rise across the impeller is %3.1f kPa\n    Static pressure rise across the impeller is %3.1f kPa\n(c)Power given to fluid is %3.2f kW\n(d)Input power to impeller is %3.2f kW',Q,dP021,dP21,P,Ps)
