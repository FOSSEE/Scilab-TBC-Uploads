
clc
clear
//Input data
p1=10//Initial pressure in bar
T1=300+273//Initial temperature in K
p2=1//Final pressure in bar
x=0.15//Friction loss of the isentropic enthalpy drop
ms=1//Steam flow rate in kg/s
d=25//Exit diameter of the nozzles in mm

//Calculations
px=(0.546*p1)//Critical pressure in bar
h1=3052.2//Enthalpy in kJ/kg
s1=7.1276//Entropy in kJ/kg
s2s=s1//Entropy in kJ/kg
h2s=2916.2//Enthalpy in kJ/kg
Vx=(44.72*sqrt(h1-h2s))//Critical velocity in m/s
h3s=2605//Enthalpy in kJ/kg
V1=(44.72*sqrt((h1-h2s)+(0.85*(h2s-h3s))))//Velocity in m/s
s3s=s1//Entropy in kJ/kg
x3s=(s3s-1.3025)/6.0579//Dryness fraction
h3s=(417.46+(x3s*2258.01))//Enthalpy in kJ/kg
h2s3=((1-x)*(h2s-h3s))//Enthalpy in kJ/kg
h3=h2s-h2s3//Enthalpy in kJ/kg
x3=(h3-417.46)/2258.01//Dryness fraction
v3=(0.001043+(x3*1.694))//Specific volume in m^3/kg
v2s=0.416//Specific volume in m^3/kg
vx=v2s//Specific volume in m^3/kg
Ax=(ms/Vx)*vx*10^4//Minimum area in cm^2
A1=(ms*v3)/V1*10^4//Area in cm^2
n=(A1*4)/(3.14*(d/10)^2)//Number of nozzles

//Output
printf('Minimum area of the nozzles is %3.2f cm^2 \n the number of nozzles are %3.0f',Ax,n)
