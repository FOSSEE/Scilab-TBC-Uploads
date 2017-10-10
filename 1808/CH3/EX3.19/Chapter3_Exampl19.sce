clc
clear
//INPUT DATA
d=0.12;////bore of the engine in m
l=0.13;//stroke of the engine in m
p1=101.325;//pressure in atm
t1=298;//temperature in K
t3=1773;//temperature in K
n=2000;//speed in rpm
g=1.4;//constant
cp=1.005;//specific pressure in kJ/kgK
cv=0.718;//specific volume inkJ/kgK
R=0.287;//gas constant inkJ/kgK

//CALCULATIONS
Rc=1.1/0.1;//compression ratio
v1=R*t1/p1;//specific volume in m^3/kg
v2=v1/Rc;//specific volume in m^3/kg
t2=t1*((v1/v2)^(g-1));//temperature in K
p2=p1*(v1/v2)^(g);//pressure in kN/m^2
v3=v2*(t3/t2);//specific volume in m^3/kg
t4=t3*((v3/v1)^(g-1));//temperature in K
p4=p2*(v3/v1)^g;//pressure in kN/m^2
Q3=cp*(t3-t2);//heat added in kJ/kg
Qr=cv*(t4-t1);//heat rejected in kJ/kg
nd=((Q3-Qr)/Q3)*100;//Thermal efficiency in percentage
V1=1.1*(3.14*d^2*l)/4;//volume in m^3
m=4*(n/2)*(V1/(v1*240));//flow rate in kg/s
P=(Q3-Qr)*m;//Power of the engine in kg/s

//OUTPUT
printf('(a)compression ratio is %3.i \n (b)pressure and temperature at the end of compression is %3.2f kN/m^2 \n (c)Thermal efficiency is %3.2f percentage \n (d)Power of the engine is %2.3f kg/s ',Rc,p2,nd,P)



