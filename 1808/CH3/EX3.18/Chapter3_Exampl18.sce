clc
clear
//INPUT DATA
p1=101.325;//Pressure in kN/m^2
t1=303;//Temperature in K
g=1.4;//constant
cp=1.005;//specific pressure in kJ/kgK
cv=0.718;//specific volume in kJ/kgK
R=0.287;//gas constant in kJ/kgK
r=2.5;//cut off ratio
v2=0.1;//clearance volume in m^3/kg


//CALCULATIONS
v1=R*t1/p1;//volume at state 1 in m^3/kg
p2=p1*((v1/v2)^(g));//pressure at state 2 in kN/m^2
t2=t1*((v1/v2));//temperature at state 2 in K
v3=r*v2;//volume at state 3 in m^3/kg
t3=t2*(v3/v2);//Temperature at state 3 in K
t4=t3*((v3/v1)^(g-1));//Temperature at state 4 in K
p4=p2*((v3/v1)^g);//Pressure at state 4 in kN/m^2
c=(v2/(v1-v2))*100;//percentage clearance
Qs=cp*(t3-t2);//heat added in kJ/kg
Qr=cv*(t4-t1);//heat rejected in kJ/kg
nd=((Qs-Qr)/Qs)*100;//Thermal efficiency in percentage
pm=((Qs-Qr)/(v1-v2));//Mean effective pressure in kN/m^2

//OUTPUT
printf('(a)pressure at state 2 is %3.2f kN/m^2 \n  temperature at state 2 is %3.2f K \n  volume at state 3 is %3.2f m^3/kg\n  Temperature at state 3 is %3.2f K \n  Temperature at state 4 is %3.2f K \n Pressure at state 4 is %3.2f kN/m^2 \n (b)percentage clearance is %3.2f percentage \n(c)Thermal efficiency is %3.2f percentage \n (d)Mean effective pressure is %3.2f kN/m^2',p2,t2,v3,t3,t4,p4,c,nd,pm)

