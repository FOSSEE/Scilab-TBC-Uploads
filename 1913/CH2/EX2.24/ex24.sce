clc
clear
//Input data
p1=100;//Pressure at the inlet of the compressor in kPa
p2=500;//Pressure at the outlet of the compressor in kPa
v1=3;//Volume of the air at the inlet of the compressor in m^3/kg
v2=0.8;//Volume of the air at the outlet of the compressor in m^3/kg
c1=25;//The velocity of air at the inlet of the compressor in m/s
c2=130;//The velocity of air at the outlet of the compressor in m/s
z=12;//The height of delivery connection above the inlet in m
g=9.81;//Gravitational constant in m/s^2
n=1.3;//Polytropic index

//Calculations
W=[(n)*(p1*v1-p2*v2)]/(n-1);//Workdone for open system polytropic process in kJ/kg
K=[(c2^2-c1^2)/2000];//Change in kinetic energy of the system in kJ/kg
P=g*(z)/1000;//Change in potential energy of the system in kJ/kg
w=W-K-P;//The shaft work of the compressor in kJ/kg

//Output
printf('The Shaft work of the compressor w = %3.3f kJ/kg \n It is the power absorbing system',w)
