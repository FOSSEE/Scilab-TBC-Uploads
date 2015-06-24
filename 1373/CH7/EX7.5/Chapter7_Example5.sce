//Chapter-7, Example 7.5, Page 286
//=============================================================================
clc
clear

//INPUT DATA
P=8;//Pressure of air in kN/m^2
Ta=250;//Temperature of air in degree C
L=1;//Length of the palte in m
W=0.3;//Width of the plate in m
v=8;//Velocity of air in m/s
Tp=78;//Temperature of plate in degree C
R=287;//Universal gas constant in J/kg.K

//CALCULATIONS
Tf=(Ta+Tp)/2;//Film temperature in degree C
Cp=1018;//Specific heat of air at 164 degree C and 1 atm pressure
kw=(30.8*10^-6);//Kinematic viscosity of air at 164 degree C and 1 atm pressure
k=0.0364;//Thermal conductivity of air at 164 degree C and 1 atm pressure
Pr=0.69;//prant number of air at 164 degree C and 1 atm pressure
k1=kw*(101330/(P*1000));//Kinematic viscosity of air at 164 degree C and 8kN/m^2 pressure
Re=(v*L)/k1;//Reynolds number
h=0.662*(k/L)*sqrt(Re)*Pr^(1/3);//Heat transfer coefficient in W/m.K
Q=2*h*L*W*(Ta-Tp);//Rate of heat removal in W
p=(P*1000)/(R*(Tf+273));//Density in kg/m^3
St=(h/(p*Cp*v));//Stanton number
Cfx2=(St*Pr^(2/3));//Colburn factor
ts=(Cfx2*p*v^2);//Average shear stress in N/m^2
D=(ts*W*L);//Drag force on one side of plate in N
D2=(2*D)/10^-3;//Total drag force on both sides of plate in N

//OUTPUT
mprintf('The drag force exerted on the plate is %3.2f*10^-3 N',D2)

//=================================END OF PROGRAM==============================
