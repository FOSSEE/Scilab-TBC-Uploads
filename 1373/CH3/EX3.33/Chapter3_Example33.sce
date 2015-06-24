//Chapter-3, Example 3.33, Page 117
//=============================================================================
clc
clear

//INPUT DATA
k=200;//Thermal conductivity of aluminium in W/m.K
t=0.001;//Thickness of fin in m
L=0.015;//Width of fin in m
D=0.025;//Diameter of the tube in m
Tb=170;//Fin base temperature in degree C
Ta=25;//Ambient fluid temperature in degree C
h=130;//Heat transfer coefficient in W/m^2.K

//CALCULATIONS
Lc=(L+(t/2));//Corrected length of fin in m
r1=(D/2);//Radius of tube in m
r2c=(r1+Lc);//Corrected radius in m
Am=t*(r2c-r1);//Corrected area in m^2
x=Lc^(3/2)*sqrt(h/(k*Am));//x for calculating efficiency
n=0.82;//From fig. 3.18 on page no. 112 efficiency is 0.82
qmax=(2*3.14*(r2c^2-r1^2)*h*(Tb-Ta));//Maximum heat transfer in W
qactual=(n*qmax);//Actual heat transfer in W

//OUTPUT
mprintf('Heat loss per fin is %3.2f W',qactual)

//=================================END OF PROGRAM==============================
