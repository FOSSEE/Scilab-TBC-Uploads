//Example 2.22://full load sped and error
clc;
clear;
close;
format('v',9)
v=220;//volts
i=5;//in amperes
wrv=((v*i*10^-3)/(3600));//kWh
mc=((3600*10^3)/(v*i));//rev/kWh
ec=((v*i*10^-3)/(3600));//kWh
sfl=mc*ec;//rps
n=30;//revolutions
hler=n*ec;//kWh
t=59.5;//seconds
hlf=(((i/2)*v*10^-3*t)/(3600));//kWh
e=(hler-hlf)/hlf;//
disp(mc,"number of revolution per kWh is,(revolutions/kWh)=")
disp(sfl,"full load speed r.p.s is")
disp(e*100,"error (fast) in percentage is")
//numberof revolutions is calcultaed wrong in the textbook
