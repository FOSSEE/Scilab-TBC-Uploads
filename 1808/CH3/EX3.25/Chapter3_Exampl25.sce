clc
clear
//INPUT DATA
Rc=20;//compression ratio
p1=101.325;//Pressure in kN/m^2
t1=300;//temperature in K
p32=2;//pressure ratio of heating process
v43=1.5;//volume ratio of heating process
g=1.4;//constant
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant

//CALCULATIONS
t2=t1*(Rc^(g-1));//Temperature in K
p2=p1*(Rc^g);//pressure in kN/m^2
p3=p32*p2;//pressure in kN/m^2
t3=p32*t2;//Temperature in K
t4=v43*t3;//Temperature in K
p5=p3/((Rc/v43)^g);//pressure in kN/m^2
t5=t4/((Rc/v43)^(g-1));//Temperature in K
nd=(((cv*(t3-t2))+(cp*(t4-t3))-(cv*(t5-t1)))/((cv*(t3-t2)+(cp*(t4-t3)))))*100;//The thermal efficiency in percentage
x=((cv*(t3-t2)+(cp*(t4-t3))));//workdone
y=(cv*(t5-t1));//workdone
v1=R*t1/p1;//specific volume in m^3/kg
pm=(x-y)/(v1*(1-(1/Rc)));//mean effective pressure in kN/m^2

//OUTPUT
printf('(a)The thermal efficiency is %3.2f percentage \n (b)The mean effective pressure is %3.1f kN/m^2',nd,pm)



