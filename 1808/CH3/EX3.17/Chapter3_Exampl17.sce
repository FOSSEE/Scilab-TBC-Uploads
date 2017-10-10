clc
clear
//INPUT DATA
Rc=18;//compression ratio
t1=300;//temperature in K
t3=1700;//temperature in K
p1=101.325;//Pressure in kN/m^2
g=1.4;//constant
cp=1.005;//specific pressure in kJ/kgK
cv=0.718;//specific volume in kJ/kgK
R=0.287;//gas constant in kJ/kgK

//CALCULATIONS
t2=t1*(Rc^(g-1));//temperature at point 2 in K
p2=p1*Rc;//Pressure at point 2 in atm
r=t3/t2;//cut off ratio
t4=t3*((r/Rc)^(g-1));//temperature in at point 4 in K
p4=1*(t4/t1);//Pressure at point 4 in atm
w12=cv*(t2-t1);//workdone 1-2 statein kJ/kg
w23=R*(t3-t2);//workdoneat  2-3 statein kJ/kg
w34=cv*(t3-t4);//workdone at 3-4 state in kJ/kg
wn=w23+w34-w12;//workdone by the system
Qs=cp*(t3-t2);//heat added in kJ/kg
Qr=cv*(t4-t1);//heat rejected in kJ/kg
nd=wn*100/Qs;//Thermal efficiency in percentage
Rw=wn/(w23+w34);//work ratio
v1=R*t1/p1;//specific volume in m^3/kg
pm=wn/(v1*(1-(1/Rc)))/100;//Mean effective pressure in bar

//OUTPUT
printf('(a)pressure in each cycle is %3.3f atm \n (b)Specific work output is %3.2f kJ/kg \n (c)the Thermal efficiency is %3.3f percentage \n (d)The work ratio is %3.4f \n (e)Mean effective pressure is %3.3f bar',p4,wn,nd,Rw,pm)

