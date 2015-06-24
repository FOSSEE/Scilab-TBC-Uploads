clc
clear
//Input data
n=6//Number of cylinders
d=0.089//Bore in m
l=0.1016//Stroke in m
vc=3.183//Compression ratio
rn=55//Relative efficiency in percent
m=0.218//Petrol consumption in kg/hp.hr
Pm=(8.4/10^-4)//Indicated mean effective pressure in kg/m^2
N=2500//Speed in r.p.m

//Calculations
an=(1-(1/(vc-1)))*100//Air standard efficiency in percent
nth=(rn*an)/100//Thermal efficiency in percent
CV=((4500*60)/(m*(nth/100)*427))//Calorific value in kcal/kg
IHP=((Pm*(3.14/4)*d^2*l*N*n)/(4500*2))//Indicated horse power
p=(m*IHP)//Petrol consumption in kg/hour

//Output
printf('(1) The calorific value of petrol is %i kcal/kg \n (2) Corresponding petrol consumption is %3.1f kg/hour',CV,p)
