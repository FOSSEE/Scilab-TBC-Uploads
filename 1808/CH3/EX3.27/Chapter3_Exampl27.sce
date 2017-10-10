clc
clear
//INPUT DATA
l=22;//Stroke in cm
d=15;//Bore in cm
Rc=10;//compression ratio
p1=101.325;//Pressure in kN/m^2
t1=303;//temperature in K
g=1.4;//constnat
cp=1.005;//specific pressure
cv=0.718;//specific volumespecific volume
R=0.287;//gas constant
n=1.3;//no of flows
v1=0.00433;//volume in m^3

//CALCULATIONS
t2=t1*(Rc^(g-1));//Temperature in K
p2=p1*(Rc^g);//pressure in kN/m^2 
ro=Rc/6;//cutoff ratio
t3=1133.5;//temperature in K
t4=(Rc/6)*t3;//temperature in K
wd=3.43;//workdone per cycle in kN/m
p3=p2*t3/t2;//pressure in kN/m^2
p5=p3*(1/6)^n;//pressure in kN/m^2
pm=((p3*(ro-1))+((p3*ro-p5*Rc)-(p2-p1*Rc))*(1/(n-1)))/(Rc-1);//mean effective pressure in kN/m^2
pm1=pm/100;//mean effective pressure in bar
vs=3.14*d^2*l/4;//stroke volume in m^3
m=p1*v1/(R*t1);//mass flow rate in kg/s
Qs=m*((cv*(t3-t2))+cp*(t4-t3));//heat supplied in kJ/cycle
nd=(wd/Qs)*100;//thermal efficiency in percentage
p=wd*400/60;//power of the engine in kJ/s
Rw=((p3*(ro-1))+(1/(n-1))*((p3*ro-p5*Rc)-(p2-p1*Rc)))/((p3*(ro-1))+(1/(n-1))*(p3*ro-p5*Rc));//work ratio

//OUTPUT
printf('(a)The temperature and pressure are \n  p2 %3.2f kN/m^2 \n p3 %3.2f kN/m^2 \n p5 %3.2f kN/m^2 \n t2 %3.2f K \n t3 %3.2f K \n t4 %3.2f K \n (b)mean effective pressure is %3.2f bar \n (c)thermal efficiency is %3.2f percentage \n (d)power of the engine is %3.2f kJ/s \n (e)The work ratio is %3.1f ',p2,p3,p5,t2,t3,t4,pm1,nd,p,Rw)



