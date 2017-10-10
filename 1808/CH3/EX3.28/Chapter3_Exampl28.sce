clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant
vs=0.01;//Swept volume in m^3
Rc=18;//compression ratio
p1=101.325;//Pressure in kN/m^2
t1=303;//temperature in K
p3=80*10^2;//pressure in kN/m^2
g=1.4;//constant
v2=0.000588;//volume in m^3
v43=0.0006;//difference in pressure

//CALCULATIONS
p2=p1*(Rc^g);//pressure in kN/m^2
a=p3/p2;//Pressure ratio
v4=v2+v43;//volume in m^3
ro=v4/v2;//cutoff ratio
v1=v2+0.01;//volume of cylinder in m^3
m=p1*v1/(R*t1);//mass of air contained in cylinder in kg
t2=t1*(Rc^(g-1));//temperature in K
t3=t2*(p3/p2);//temperature in K
t4=t3*(v4/v2);//temperature in K
Qs=(cv*(t3-t2)+cp*(t4-t3))*0.01234;//heat added in kJ
t5=t4/((v1/v4)^(g-1));//temperature in K
Qr=cv*(t5-t1)*0.01234;//Heat rejected in kJ
wn=(Qs-Qr);//workdone per cycle
nd=(wn/Qs)*100;//Thermal efficiency in percentage
pm=(wn/vs);//mean effective pressure in kN/m^2
p5=p1*(t5/t1);//pressure in kN/m^2
wp=p3*(v4-v2)+((p3*v4-p5*v1)/(g-1));//positive work done 
Rw=wn/wp;//work ratio

//OUTPUT
printf('(a)Pressure ratio is %3.2f \n (b)cutoff ratio is %3.4f \n (c)mass of air contained in cylinder is %3.5f kg \n (d)Heat added is %3.2f kJ \n (e)Heat rejected is %3.3f kJ \n (f)workdone per cycle is %3.2f kJ\n (g)Thermal efficiency is %3.2f percentage \n (h)Mean effective pressure is %3.1f kN/m^2 \n (i)The work ratio is %3.4f ',a,ro,m,Qs,Qr,wn,nd,pm,Rw)



