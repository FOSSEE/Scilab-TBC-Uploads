//Chapter-3, Example 3.14, Page 71
//=============================================================================
clc
clear

//INPUT DATA
Di=0.1;//I.D of the pipe in m
Do=0.11;//O.D of the pipe in m
L=0.005;//Thickness of the wall in m
k1=50;//Thermal conductivity of steel pipe line in W/m.K
k2=0.06;//Thermal conductivity of first insulating material in W/m.K
k3=0.12;//Thermal conductivity of second insulating material in W/m.K
T=[250,50];//Temperature at inside tube surface and outside surface of insulation in degree C
r3=0.105;//Radius of r3 in m as shown in fig.3.14 on page no.71
r4=0.155;//Radius of r4 in m as shown in fig.3.14 on page no.71

//CALCULATIONS
r1=(Di/2);//Radius of the pipe in m
r2=(Do/2);//Radius of the pipe in m
q=((2*3.14*(T(1)-T(2)))/(((log(r2/r1))/k1)+((log(r3/r2))/k2)+((log(r4/r3))/k3)));//Loss of heat per metre length of pipe in W/m
T3=((q*log(r4/r3))/(2*3.14*k3))+T(2);//Interface temperature in degree C

//OUTPUT
mprintf('Loss of heat per metre length of pipe is %3.1f W/m \n Interface temperature is %3.1f degree C',q,T3)

//=================================END OF PROGRAM==============================
