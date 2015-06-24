////Example 7.14 at page no. 250
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constant
l=4;//km
n=5000;//habitants
Ch=200;//litres/day(habitant capacity)
t=10;//hour(daiy supply time)
hf=20;//meter(Head loss)
f=0.008;//coeff. of friction
Qty=n*Ch/2;//litres(Water supplied in 10 hours)
Q=Qty/(t*60*60);//litres/sec
Q=Q/1000;//m^3/sec
d=(f*l*1000*Q^2/3.0257/hf)^(1/5);//meter
disp(d*1000,"Diameter of pipe(mm) : ");
