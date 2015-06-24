
clc
clear
//Input data
p1=5//Pressure of steam in bar
V=100//Velocity in m/s
p2=1.5//Exit pressure in bar
At=1280//Throat area in mm^2
Ae=1600//Exit area in mm^2
rp=0.58//Critical pressure ratio

//Calculations
ho=2749//Enthalpy in kJ/kg
so=6.822//Entropy in kJ/kg.K
px=(rp*p1)//Critical pressure in bar
sx=so//Entropy in kJ/kg.K
xx=(sx-1.660)/5.344//Dryness fraction
hx=(556+(xx*2168))//Enthalpy in kJ/kg
Vx=sqrt(((ho+((V^2*10^-3))/2)-hx)*(2/10^-3))//Velocity in m/s
vx=(xx*0.6253)//Specific volume in m^3/kg
w=(At*10^-6*Vx)/vx//Mass flow rate in kg/s
s1s=sx//Entropy in kJ/kg.K
x1s=(so-1.434)/5.789//Dryness fraction
h1s=(467+x1s*2226)//ENthalpy in kJ/kg
z=((Vx^2*10^-3)/2)-hx//z value
//By iteratio scheme
x1=0.932//Dryness fraction
v1=1.080//Specific volume in m^3/kg
h1=2542//Enthalpy in kJ/kg
V1=652.2//Velocity in m/s
nn=((hx-h1)/(hx-h1s))//Nozzle efficiency

//Output
printf('Mass flow rate is %3.3f kg/s \n Nozzle efficiency is %3.3f',w,nn)
