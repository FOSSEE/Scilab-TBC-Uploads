clc
clear
//INPUT DATA
p1=101;//Pressure in kPa
t1=293;//temperature in K
v12=7;//compression ratio
Qs=1000;//heat added in kJ
Ra=0.287;//gas constant
m=1;//mass of air in kg/min 
cv=0.7243;//calorific value

//CALCULATIONS
v1=(Ra*t1)/p1;//specific volume in m^3/kg
v2=v1/(v12);//specific volume in m^3/kg
p2=p1*((v12)^(1.4));//pressure of cycle 
t2=t1*((v12)^(1.4-1));//temperature in K
t3=(Qs/(m*cv))+t2;//temperature in K
p3=Ra*t3/v2;//pressure in Kn/m^2
t4=t3*((1/v12)^(1.4-1));//temperature in K
Qr=m*cv*(t4-t1);//heat rejected in kJ
no=((Qs-Qr)/Qs)*100;//otto cycle efficiency in percentage
pm=((Qs-Qr)/(v1-v2));//mean effective pressure in kN/m^2
P=m*(Qs-Qr);//power developed in kJ/min
//CASE B
nc=((t3-t1)/t3)*100;//Carnot cycle efficiency in percentage

//OUTPUT
printf('(a)Specific volume of cycle is %3.2f m^3/kg \n  pressure in the cycle is %3.2f kW/m^2 \n  temperature in the cycle is %3.2f K \n  Specific volume of cycle at point 3 is %3.3f m^3/kg \n  pressure in the cycle at point 3 is %3.2f kW/m^2 \n  temperature in the cycle at point 4 is %3.2f K \n(b)the efficiency of the otto cycle is %3.2f percentage \n (c)mean effective pressure is %3.2f kN/m^2 \n (d)power developed is %3.2f kJ/min \n CASE B \n Carnot cycle efficiency is %3.2f percentage \n Carnot cylce efficiency is high compared to Otto cycle efficiency',v1,p2,t2,v2,p3,t4,no,pm,P,nc)


