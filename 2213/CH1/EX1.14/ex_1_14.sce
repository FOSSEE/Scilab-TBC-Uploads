//Example 1.14//voltage across electrodes and current
clc;
clear;
close;
format('v',6)
pf=0.04;//power factor
p=1000;//in watts
f=10*10^6;// in MHz
a1=.004;//area in m^2
a2=0.001;//area in m^2
t=0.02;//thickness in meter
t1=.01;//thicknes sin meter
t2=t-t1;//thickness in meter
ep=8.854*10^-12;//constant in F/m
er=5;//relative permittivity of plywood
er1=1;//relative permittivity in air
c=(ep*(((a1*er1)/t)+(a2/((t1/er)+(t2/er1)))));//capacitance in farads
vr=(sqrt(p/(2*%pi*f*c*pf)));//voltage is required in volts
disp("part (a)")
disp(round(vr),"voltage across the electrodes in volts")
i=p/(vr*pf);//current in amperes
disp("part (b)")
disp(i,"cureent in amperes is")
