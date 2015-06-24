
clc
clear
//Input data
H=18;//The length of furnace wall riser in m
O=76.2;//The outer diameter of the furnace wall riser in mm
T=6.1;//The thickness of the furnace wall riser in mm
P=80;//Pressure at which saturated water is recieved in bar
V=1.5;//The velocity of the saturated water in m/s
CR=12.5;//Assuming circulation ratio
S=1.2;//Assuming slip ratio
g=9.81;//Gravitational force constant in m/s^2
pi=3.142;//Mathematical constant

//Calculations
xt=1/CR;//The quality of steam at the top of the riser
vf=0.001384;//Specific volume of saturated liquid at 80 bar in m^3/kg
vfg=0.02214;//Specific volume of Evaporation gas at 80 bar in m^3/kg
vg=0.02352;//Specific volume of saturated gas at 80 bar in m^3/kg
pf=1/vf;//Density of the saturated liquid at 80 bar in kg/m^3
vt=vf+(xt*vfg);//Specific volume of the steam at the top of the riser in m^3/kg
pt=1/vt;//Density of steam at the top of the riser in kg/m^3
pm=(pt+pf)/2;//Mean density in kg/m^3
Ph=[H*g*(pf-pm)]/1000;//The pressure head developed in kPa
C=(vf/vg)*S;//The part of calculation for the void fraction
VF=1/[1+((1-xt)*C)/xt];//The void fraction at riser exit
hfg=1441.3;//Enthalpy of the evaporation in kJ/kg
di=O-12.2;//Inner diameter of the furnace wall riser in mm
A=(pi*di^2)/4;//Inner area in m^2
w=pf*A*V;//Mass flow rate of saturated water entering the riser in kg/s
ws=xt*w;//The rate of steam formation in the riser tube in kg/s
h=[(ws*hfg)/(O*H)]/1000;//Heat transfer rate per unit projected area in kW/m^2

//output
printf('(a) The pressure head developed = %3.1f kPa \n (b)The void fraction at riser exit = %3.4f \n (c) The heat transfer rate per unit projected area = %3.1f kW/m^2 ',Ph,VF,h)
 
