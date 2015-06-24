//Chapter-3, Example 3.21, Page 85
//=============================================================================
clc
clear

//INPUT DATA
Do=0.006;//Outer diameter of hallow cylinder in m
Di=0.004;//Inner diameter of hallow cylinder in m
I=1000;//Current in A
T=30;//Temperature of water in degree C
h=35000;//Heat transfer coefficient in W/m^2.K
k=18;//Thermal conductivity of the material in W/m.K
R=0.1;//Electrical reisitivity of the material in ohm.mm^2/m

//CALCULATIONS
ro=(Do/2);//Outer radius of hallow cylinder in m
ri=(Di/2);//Inner radius of hallow cylinder in m
V=((3.14*(ro^2-ri^2)));//Vol. of wire in m^2
Rth=(R/(3.14*(ro^2-ri^2)*10^6));//Resistivity in ohm/mm^2
q=((I*I*Rth)/V);//Heat transfer rate in W/m^3
To=T+(((q*ri*ri)/(4*k))*((((2*k)/(h*ri))-1)*((ro/ri)^2-1)+(2*(ro/ri)^2*log(ro/ri))));//Temperature at the outer surface in degree C

//OUTPUT
mprintf('Temperature at the outer surface is %3.2f degree C',To)

//=================================END OF PROGRAM==============================
