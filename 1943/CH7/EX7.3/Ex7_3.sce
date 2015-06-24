
clc
clear
//Input data
p1=7.8//Pressure in bar
t1=180+273//Temperature in K
p2=1.03//pressure in bar
m=3.6//flow rate of air in kg/s
g=1.4//Ratio of specific heats
R=287//Characteristic gas constant in J/kg.K
cp=1.005//Specific heat in kJ/kg.K

//Calculations
pxpo=(2/(g+1))^(g/(g-1))//Ratio of pressure
px=pxpo*p1//Critical pressure in bar
txto=(2/(g+1))//Ratio of temperatures
tx=t1*txto//Critical temperature in K
vx=(R*tx)/(px*10^5)//Critical specific volume in m^3/kg
Vx=sqrt(g*R*tx)//Critical velocity in m/s
Ax=((m*vx)/Vx)*10^6//Critical area in mm^2
tot1=(p1/p2)^((g-1)/g)//Ratio of temperatures
t1i=t1/tot1//Temperature in K
v1=(R*t1i)/(p2*10^5)//Specific volume in m^3/kg
V1=44.72*sqrt(cp*(t1-t1i))//Velocity in m/s
A1=((m*v1)/V1)*10^6//Area in mm^2

//Output
printf('Area of throat is %3.0f mm^2 \n Exit area is %i mm^2',Ax,A1)
