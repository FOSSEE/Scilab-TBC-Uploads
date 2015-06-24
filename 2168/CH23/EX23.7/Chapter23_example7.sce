clc
clear
//Input data
n=1//Number of cylinders
t=30//Trail time in min
m=5.6//Oil consumption in l
CV=9980//Calorific value of oil in kcal/kg
g=0.8//Specific gravity of oil 
a=8.35//Average area of indicator diagram in sq.cm
l=8.4//Length of the indicator diagram in cm
is=5.5//Indicator spring scale
L=147.5//Brake load in kg
sp=20//Spring balance reading in kg
d=1.5//Effective brake wheel diameter in m
N=200//Speed in r.p.m
cyd=30//Cylinder diameter in cm
l1=45//Stroke in cm
mw=11//Jacket cooling water in kg/min
Tc=35+273//Temperature rise of cooling water in K

//Calculations
mp=(a/l)*is//Mean effective pressure
ihp=((mp*(l1/100)*(3.14/4)*cyd^2*(N/2))/4500)//Indicated horse power in h.p
bhp=(L*3.14*d*N)/4500//Brake horse power in h.p
nm=(bhp/ihp)*100//Mechanical efficiency in percent
F=(m*(60/t)*g)//Fuel consumption in kg/hour
Fc=(F/bhp)//Specific fuel consumption in kg/B.H.P/hour
ith=((ihp*(4500/427))/((F/60)*CV))*100//Indicated thermal efficiency in percent

//Output
printf('(a) I.H.P is %3.1f \n (b) B.H.P is %3.1f \n (c) Mechanical efficiency is %3.1f percent \n (d) Specific fuel consumption is %3.2f kg/B.H.P/hour \n (e) Indicated thermal efficiency is %3.1f percent',ihp,bhp,nm,Fc,ith)
