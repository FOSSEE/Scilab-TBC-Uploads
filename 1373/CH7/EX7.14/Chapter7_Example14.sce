//Chapter-7, Example 7.14, Page 305
//=============================================================================
clc
clear

//INPUT DATA
m=0.314;//Mass flow rate of air in m^3/s
n1=7;//Number of tubes in the direction of flow
n2=8;//Number of tubes perpendicular to the direction of flow
L=1.25;//Length of each tube in m
D=0.019;//Outer diameter in m
ST=0.0286;//Transverse  pitch in m
SD=0.038;//Longitudinal pitch in m
Ta=200;//Temperature of air in degree C
Ts=96;//Surface temperature in degree C

//CALCULATIONS
Tf=(Ta+Ts)/2;//Film temperature in degree C
k=0.039;//Thermal conductivity of air at 15 degree C 
Pr=0.688;//prantl number of air at 15 degree C
v1=(3*10^-5);//Kinematic viscosity of air at 15 degree C
vmax=(m/((ST*n2*L)-(D*n2*L)));//Maximum velocity in m/s
Re=(vmax*D)/v1;//Reynolds number
Nu=(0.299*Re^0.602*Pr^(1/3));//Nusselts number
X=0.96;//From Table 7.5 on page no.302
Nux=(X*Nu);//Average nusselts number
h=(Nux*k)/D;//Convective heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Convective heat transfer coefficient is %3.2f W/m^2.K',h)

//=================================END OF PROGRAM==============================
