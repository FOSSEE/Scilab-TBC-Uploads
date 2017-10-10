clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant
p1=100;//Pressure in kPa
t1=303;//temperature in Degree C
g=1.4;//constant
t2=700;//temperature in Degree C
v1=0.05;//volume in m^3
Rc=10;//compression ratio
nr=0.9;//regenerator efficiency in percentage
t=30
//CALCULATIONS
m=p1*v1/(R*t1);//mass flow rate

wn=m*R*log(Rc*(t2-t));//Net workdone in kJ
ns=(1-((t+273)/(t2+273)))*100;//Thermal efficiency with 100% refrigerator in percentage
Qs=m*cv*(t2-t)+(m*R*(273+t2)*log(Rc));//heat added in kJ
Qr=m*cv*(t2-t)+(m*R*(273+t)*log(Rc));//heat added in kJ
nso=(1-(Qr/Qs))*100;//Thermal efficiency without refrigerator in percentage
nsa=(((R*(t2-t)*log(Rc)))/((R*(273+t2)*log(Rc))+((1-nr)*cv*(t2-t))))*100;//Thermal efficiency with 90% refrigerator in percentage

//OUTPUT
printf('(i)net workdone is %3.2f kJ \n (ii)Thermal efficiency with 100 percentage efficiency is %3.2f percentage \n (iii)Thermal efficiency without regenerator is %3.2f percentage \n (iv)Thermal efficiency with 90percentage efficiency is %3.2f percentage \n',wn,ns,nso,nsa )
