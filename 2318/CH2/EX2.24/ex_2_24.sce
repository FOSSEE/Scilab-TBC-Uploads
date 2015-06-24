//Example 2.24://shunt resistance and series resistance
clc;
clear;
close;
format('v',9)
i=125;//amperes
ia=25;//armature current in mA
ish=i-(ia*10^-3);//amperes
ra=3;//ohms
rsh=((ia*ra)/ish);//milli ohms
disp(rsh,"shunt resistance in milli ohm is")
pcs=ish^2*rsh*10^-3;//watts
disp(pcs,"power consumption in shunt is,(W)=")
rv=625;//volts
rs=((rv-(ra*ia*10^-3))/(ia*10^-3))*10^-3;//killo ohms
disp(rs,"series resistance in kilo ohm is")
pc=(ia*10^-3)^2*rs*10^3;//watts
disp(pc,"power consumption in the series resistance is,(W)=")
