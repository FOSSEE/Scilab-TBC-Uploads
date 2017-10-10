clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant
p1=100;//pressure in kPa
t1=300;//temperature in K
t3=1500;//temperature in K
g=1.4;//constant
v1=6;//volume in m^3/s
Rp=10;//compression ratio

//CALCULATIONS
wn=cp*(1-((1/(Rp^((g-1)/g)))))*(t3-t1*(Rp^((g-1)/g)));//Net work done in kJ/kg
t2=t1*(Rp^((g-1)/g));//temperature in K
ng=(wn/(cp*(t3-t2)))*100;//Thermal efficiency in percentage
t4=t3/(Rp^((g-1)/g));//temperature in K
Rw=((cp*(t2-t1))/(cp*(t3-t4)))*100;//back work ratio
m=p1*v1/(R*t1);//mass flow rate in kg/s
P=m*wn;//Power developed in kW

//OUTPUT
printf('(i))Thermal efficiency is %3.2f percentage \n(ii)The back work ratio is %3.1f percentage \n(iii)Power developed is %3.1f kW',ng,Rw,P)


