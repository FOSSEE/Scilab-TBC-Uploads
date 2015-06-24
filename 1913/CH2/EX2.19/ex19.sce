clc
clear
p1=1000;//Pressure at the inlet in kPa
t1=750;//Temperature at the inlet in K
c1=200;//Velocity at the inlet in m/s
p2=125;//Pressure at the exit in kPa
c2=40;//Velocity at the exit in m/s
m1=1000;//Mass flow rate of air in kg/hr
cp=1.053;//Specific heat at constant pressure in kJ/kgK
k=1.375;//Adiabatic index
Q=0;//The turbine is adiabatic

//Calculations
m=m1/3600;//The mass flow rate of air in kg/s
P=p2/p1;//Ratio of the pressure
t2=t1*((p2/p1)^((k-1)/k));//Temperature of air at exit in K
h=cp*(t2-t1);//Change in enthalpy of the system in kJ
p=m*(((c2^2-c1^2)/(2*1000))+h);//Power output of the turbine in kW
p1=-p;//Power output of the turbine in kW

//Output
printf('(a)Temperature of air at exit t2 = %3.3f K \n (b)The power output of the turbine P = %3.3f kW ',t2,p1)
