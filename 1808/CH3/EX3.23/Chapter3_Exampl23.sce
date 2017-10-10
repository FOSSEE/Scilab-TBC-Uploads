clc
clear
//INPUT DATA
l=20;//Stroke in cm
d=15;//Bore in cm
N=400;//speed in rpm
Rc=22;//compression ratio
p1=101.325;//Pressure in kN/m^2
t1=303;//temperature in K
n1=1.3;//no of cycles
n2=1.35;//no of cycles
g=1.4;//constant
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constnat
v1=0.003698;//specific volume in m^3/s
vs=0.00353;//specific volume in m^3/s
ro=2.68;//cutoff ratio

//CALCULATIONS
p2=p1*(Rc^(n1));//pressure in kN/m^2
t2=t1*(Rc^(n1-1));//temperature in K
t3=t2*(ro);//temperature in K
p4=p2*((ro/Rc)^n2);//maximum pressure in kN/m^2
t4=t3*(1/((Rc/ro)^(n2-1)));//maximum temperature in K
m=p1*v1/(R*t1);//mass flow rate in kg/s
wn=R*((t3-t2)+((t3-t4)/(n2-1))-((t2-t1)/(n1-1)));//work done in kJ/kg
pm=wn*m/(vs);//mean effective pressure in kN/m^2
Qs=cp*(t3-t2);//heat supplied in kJ/kg
nd=(wn/Qs)*100;//thermal efficiency in percentage
P=wn*m*N/60;//POWER DEVELOPED

//OUTPUT
printf('(a)The temperature and pressure at all corner points are \n  pressure at point 1 is %3.2f kN/m^2 \n temperature at point 2 is %3.2f K \n  temperature at point 3 is %3.2f K \n maximum pressure is %3.2f kN/m^2 \n temperature at point 4 is %3.2f K \n(b)The mean effective pressure is %3.3f kN/m^2 \n (c)Thermal efficiency is %3.2f percentage \n (d)Power developed is %3.2f kJ/s ',p2,t2,t3,p4,t4,pm,nd,P)

