//Chapter-7, Example 7.24, Page 321
//=============================================================================
clc
clear

//INPUT DATA
D=[0.4,0.8];//Dimensions of the trunk duct in m
Ta=20;//Temperature of air in degree C
v=7;//Velocity of air in m/s
v1=(15.06*10^-6);//Kinematic viscosity in m^2/s
a=(7.71*10^-2);//Thermal diffusivity in m^2/h
k=0.0259;//Thermal conductivity in W/m.K

//CALCULATIONS
Dh=(4*(D(1)*D(2)))/(2*(D(1)+D(2)));//Value of Dh in m
Re=(v*Dh)/v1;//Reynolds number
Pr=(v1/a)*3600;//Prantl number
Nu=(0.023*Re^(4/5)*Pr^0.4);//Nussults number
h=(Nu*k)/Dh;//Heat transfer coefficient in W/m^2.K
Q=(h*(2*(D(1)+D(2))));//Heat leakage per unit length per unit difference in W

//OUTPUT
mprintf('Heat leakage per unit length per unit difference is %3.2f W',Q)

//=================================END OF PROGRAM==============================
