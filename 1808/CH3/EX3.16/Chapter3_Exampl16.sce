clc
clear
//INPUT DATA
t1=300;//temperature in K
t3=1500;//temperature in K
cv=0.7243;//calorific value
m=0.4;//air flow rate in kg/min

//CALCULATIONS
t2=sqrt(t1*t3);//temperature in K
Wnmax=cv*((t3-t2)-(t2-t1));//maximum workdone in kJ/kg
Pnmax=m*Wnmax/60;//maximum power developed in kJ/s

//OUTPUT
printf('(a)Maximum power developed is %3.3f kJ/s ',Pnmax)

