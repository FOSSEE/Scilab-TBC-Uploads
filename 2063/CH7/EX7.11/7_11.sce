clc
clear
//Input data
d=0.12;//Diameter of the bore in m
l=0.13;//Length of stroke in m
N=2500;//Speed of the engine in rpm
d1=0.06;//Diameter of the orifice in m
Cd=0.70;//Discharge coefficient of orifice
hw=33;//Heat causing air flow through orifice in cm of water
p=760;//Barometric reading in mm of Hg
T1=298;//Ambient temperature in degree K
p1=1.013;//Pressure of air at the end of suction in bar
T2=22;//Temperature of air at the end of suction in degree C
R=0.287;//Universal gas constant
n=6;//Number of cylinders in the engine
n1=1250;//Number of strokes per minute for a four stroke engine operating at 2500 rpm

//Calculations
V=(3.14*d^2*l)/4;//Swept volume of piston in m^3
Ao=(3.14*d1^2)/4;//Area of the orifice in m^2
rho=p1*10^5/((R*T1)*1000);//Density of air at 1.013 bar and 22 degrees C
Va=840*Cd*Ao*(hw/rho)^(1/2);//Volume of air passing through the orifice in m^3/min
V1=8.734/n;//Actual volume of air per cylinder in m^3/min
As=V1/n1;//Air supplied per cycle per cylinder in m^3
nv=(As/V)*100;//Volumetric efficiency of the engine in percentage

//Output
printf('The volumetric efficiency of the engine is %3.2f percent',nv)
