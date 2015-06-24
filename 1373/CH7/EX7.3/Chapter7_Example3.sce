//Chapter-7, Example 7.3, Page 282
//=============================================================================
clc
clear

//INPUT DATA
Ta=20;//Temperature of air in degree C
v=3;//Velocity of flow in m/s
L=2;//Length of plate in m
W=1;//Width of plate in m
x1=0.3;//Initial point of the boundary layer in m
x2=0.8;//Final point of the boundary layer in m
p=1.17;//Density of air at 20 degree C in kg/m^3
k=(15*10^-6);//Kinematic viscosity in m^2/s
Re=(5*10^5);//Reynolds number at the transition frm laminar to turbulant

//CALCULATIONS
x=(k*Re)/v;//Critical length in m
Rel=(v*L)/k;//Reynolds number
q=(4.64*L)/sqrt(Rel)*1000;//Boundary layer thickness at the trailing edge of plate in mm
ts=1.292*(0.5*p*v^2)*sqrt(1/Rel);//Average shear stress in N/m^2
F=(2*L*ts);//Drag force on the two sides of the plate in N
q80=(4.64*x2)/sqrt((v*x2)/k);//Boundray layer thickness at x=0.8 m
q30=(4.64*x1)/sqrt((v*x1)/k);//Boundray layer thickness at x=0.3 m
m=((5/8)*p*v*(q80-q30))/10^-3;//Mass flow of air in kg/s

//OUTPUT
mprintf('Boundary layer thickness at the trailing edge of plate is % 3.2f mm \nDrag force on the two sides of the plate is %3.4f N \nMass flow of air is %3.1f*10^-3 kg/s',q,F,m)

//=================================END OF PROGRAM==============================
