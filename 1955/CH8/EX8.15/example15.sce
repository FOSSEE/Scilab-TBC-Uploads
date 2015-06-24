clc
clear
//input data
D2=1.25//External diameter of the impeller in m
D1=0.5//Internal diameter of the impeller in m
Q=2//Discharge of the pump in m^3/s
Hm=16//Head over which pump has to operate in m
N=300//Running speed of the pump in rpm
b22=30//Angle at which vanes are curved back in degree
Cr1=2.5//Flow velocity through impeller at inlet in m/s
Cr2=Cr1//Flow velocity through impeller at outlet in m/s
d=1000//Density of the water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2

//calculations
U2=(3.1415*D2*N)/60//Outlet tangential impeller velocity in m/s
Wx2=Cr2/tand(b22)//Exit relative velocity in m/s
Cx2=U2-Wx2//Absolute whirl velocity in m/s
nm=(Hm*g)/(U2*Cx2)//Manometric or hydraulic efficiency
m=d*Q//Mass flow rate of water in kg/s
W=m*U2*Cx2*10^-3//Fluid power developed by the impeller in kW
Ps=W//Power required by the pump in kW neglecting mechanical loses
Nls=((2*g*Hm)/(((3.1415/60)^2)*(D2^2-D1^2)))^(1/2)//Minimum starting speed of the pump in rpm

//output
printf('(a)Manometric or hydraulic efficiency is %3.3f \n(b)Power required by the pump is %3.2f kW\n(c)Minimum starting speed of the pump is %3.1f rpm',nm,Ps,Nls)
