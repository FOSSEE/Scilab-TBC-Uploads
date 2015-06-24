//Chapter-5, Example 5.13, Page 186
//=============================================================================
clc
clear


//INPUT DATA
D=0.12;//Diameter of cylinder in m
Ti=20;//Initial temperature in degree C
Tf=820;//Temperature of furnace in degree C
h=140;//Heat transfer coefficient in W/m^2.K
Ta=800;//Axis temperature in degree C
r=0.054;//Radius in m
k=21;//Thermal conductivity in W/m.K
a=(6.11*10^-6);//Thermal diffusivity in m^2/h

//CALCULATIONS
Bi=(h*(D/2))/(2*k);//Biot number
T=(Ta-Tf)/(Ti-Tf);//Temperature distribution
Fo=5.2;//Using Fig.5.10, on page no.187 for 1/(2Bi)=2.5 
t=(Fo*(D/2)^2)/a;//Time required for the axis temperature to reach 800 degree C in s
r1=(r/(D/2));//Ratio at a radius of 5.4 cm
X=0.85;//From Fig.5.11 on page no. 188 the temperature at r=5.4 i sgiven by X
T1=X*(Ta-Tf)+Tf;//Temperature at a radius of 5.4 cm at that tim ein degree C

//OUTPUT
mprintf('Time required for the axis temperature to reach 800 degree C is %3.0f s \nTemperature at a radius of 5.4 cm at that time is %i degree C',t,T1)

//=================================END OF PROGRAM==============================
