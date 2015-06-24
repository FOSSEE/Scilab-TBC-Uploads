//Chapter-7, Example 7.18, Page 312
//=============================================================================
clc
clear

//INPUT DATA
Ti=25;//Initial temperature of water in degree C
D=0.05;//Diamter of the tube in m
Re=1600;//Reynolds number
q=800;//Heat flux in W/m
Tf=50;//Final temperature of water in degree C

//CALCULATIONS
k=0.61;//Thermal conductivity of water at 25 degree C in W/m.K
u=(915*10^-6);//Dynamic viscosity in N.s/m^2
m=(Re*3.14*D*u)/4;//Mass flow rate of water in kg/s
h=(4.364*k)/D;//Heat transfer coefficient in W/m^2.K
qs=(q/(3.14*D));//Constant heat flux in W/m^2
Cp=4178;//Specific heat of water in J/kg.K
L=((m*Cp*(Tf-Ti))/q);//Length of the tube in m

//OUTPUT
mprintf('Average heat transfer coefficient is %3.2f W/m^2.K \nLength of the tube is %3.3f m',h,L)

//=================================END OF PROGRAM==============================
