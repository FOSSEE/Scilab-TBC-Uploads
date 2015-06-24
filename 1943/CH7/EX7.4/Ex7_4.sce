
clc
clear
//Input data
p1=3.8//pressure in bar
T1=450+273//Tempereture in K
p2=1//pressure in bar
m=16//Flow rate in kg/s
Cd=0.98//coefficient of discharge
nv=0.93//nozzile effeciency
cp=1.11//Specific heat in kJ/kg.K
g=1.333//Ratio of specific heats

//Calculations
pxpo=(2/(g+1))^(g/(g-1))//Pressure ratio
px=pxpo*p1//Critical pressure in bar
TxTo=2/(g+1)//Temperature ratio
Tx=T1*TxTo//Critical temperature in K
Vx=44.72*sqrt(cp*(T1-Tx))//critical velocity in m/s
R=(cp*(g-1)*1000)/g//Characteristic gas constant in J/kg.K
vx=(R*Tx)/(px*10^5)//Critical specific volume in m^3/kg
ws=(m/Cd)//Mass flow rate in kg/s
Ax=(ws*vx)/Vx//Critical area in m^2
T1sTo=(p2/p1)^((g-1)/g)//Temperature ratio
T1s=T1*T1sTo//Temperature in K
T1i=(T1-(nv*(T1-T1s)))//Temperature in K
v1=(R*T1i)/(p2*10^5)//Specific volume in m^3/kg
V1=44.72*sqrt(cp*(T1-T1i))//Velocity in m/s
A1=(ws*v1)/V1//Area in m^2

//Output
printf('Throat raea is %3.4f m^2 \n Exit arae is %3.4f m^2',Ax,A1)
