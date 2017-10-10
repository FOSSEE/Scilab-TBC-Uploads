clc
clear
//INPUT DATA
t1=300;//temperature in K
p1=1;//pressure in atm
t3=1700;//temperature in K
Rc=7;//compression ratio
R=0.287;//gas constant
cv=0.7234;//calorific value

//CALCULATIONS
t2=t1*(Rc^(1.4-1));//temperature in K
p2=p1*(Rc^(1.4));//pressure in atm
p3=p2*t3/(t2);//pressure in atm
t4=t3/((Rc)^(1.4-1));//temperature in K
p4=p3/(Rc^(1.4));//pressure in atm
no=1-((1/Rc)^(1.4-1))*100;//Thermal efficiency in percentage
Rwo=1-((t1/t3)*((Rc)^(1.4-1)));//work ratio
v1=R*t1/p1;//specific volume in m^3/kg
wn=(cv*(t3-t2))-((cv*(t4-t1)));//net work
pm=(wn/(v1*(1-(1/Rc))));//mean effective pressure in Bar

//OUTPUT
printf('(a)pressure at state point 2 is %3.2f atm \n temperature at point 2 is %3.2f K \n  pressure at state point 3 is %3.2f atm \n temperature at point 4 is %3.2f K \n  pressure at state point 3 is %3.2f atm \n (b)Thermal efficiency is %3.2f percentage \n (c)work ratio is %3.5f \n (d)mean effective pressure is %3.2f Bar',p2,t2,p3,t4,p4,no,Rwo,pm)

