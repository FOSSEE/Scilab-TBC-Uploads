//Example 11.7: potential drop and capacity if booster
clc;
clear;
close;
//given data :
format('v',8)
ix=250;//amperes
vb=2;//in volts
r=0.02;//in ohms
x=poly(0,"x");
p=-27.6+16*x+0*x^2;//
y=roots(p);//km
pc=vb+(ix*r*(1.6)^2)/2;//in volts
pd=((ix*r*(y^2))/2);//in volts
tcurr= (1.6*ix)+((ix*(3.2-y)));//in amperes
vnf=r*tcurr;//in volts
bnb=vnf-vb;//in volts
cb=((bnb*tcurr)/1000);//in kw
disp(pc,"maximum potential drop on any two points on the rails in volts is")
disp(cb,"capacity of booster in kW is")
