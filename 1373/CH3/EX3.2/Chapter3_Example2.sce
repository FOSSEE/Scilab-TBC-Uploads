//Chapter-3, Example 3.2, Page 48
//=============================================================================
clc
clear

Di=0.05;//Inner diameter of hollow cylinder in m
Do=0.1;//Outer diameter of hollow cylinder in m
T=[200,100];//Inner and outer surface temperature in degree C
k=70;//Thermal conductivity in W/m.K

//CALCULATIONS
ro=(Do/2);//Outer radius of hollow cylinder in m
ri=(Di/2);//Inner radius of hollow cylinder in m
Q=((2*3.14*k*(T(1)-T(2)))/(log(ro/ri)));//Heat transfer rate in W
r1=(ro+ri)/2;//Radius at halfway between ro and ri in m
T1=T(1)-((T(1)-T(2))*(log(r1/ri)/(log(ro/ri))));//Temperature of the point halfway between the inner and outer surface in degree C

//OUTPUT
mprintf('Heat transfer rate is %3.1f W /m\n Temperature of the point halfway between the inner and outer surface is %3.1f degree C',Q,T1)

//=================================END OF PROGRAM==============================
