clc
clear
//INPUT DATA
v1=0.5;//volume in m^3
p1=1;//pressure in bar
t1=303;//temperature in K
p2=12;//pressure in bar
Qs=250;//heat is added in kJ
wc=200;//working cycles in cycles/min
v2=0.085;//volume in m^3
m=1;//mass of air
cv=0.7243;//calorific value

//CALCULATIONS
Rc=(p2/p1)^(1/1.4);//compression ratio
t2=t1*((Rc)^(1.4-1));//temperature in K
pc=((v2/(v1-v2))*100);//percentage clearance
t3=(Qs/(m*cv))+t2;//temperature in K
t4=((1/Rc)^(1.4-1))*t3;//temperature in K
Qr=m*cv*(t4-t1);//heat rejected in kJ/kg
no=((Qs-Qr)/Qs)*100;//thermal efficiency in percentage
pm=((Qs-Qr)/(v1-v2));//mean effective pressure
p=((Qs-Qr)*wc)/60;//power developed in kJ/s

//OUTPUT
printf('(a)percentage clearance is %3.2f percentage \n (b)the thermal efficiency is %3.2f percentage \n (c)mean effective pressure is %3.2f \n (d)power developed is %3.2f kJ/s',pc,no,pm,p)

