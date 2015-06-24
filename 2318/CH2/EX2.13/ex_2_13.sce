//Example 2.13://power factor and line current
clc;
clear;
close;
x=1;//
w2=2*x;//
w1=x;//
ph=atand((sqrt(3)*(w2-w1))/(w2+w1));//in degree
pf=cosd(ph);//power factor
disp(pf,"power factor is")
w=50;//kW
v=400;//volts
il=((w/(sqrt(3)*v*pf)))*10^3;//in amperes
disp(il,"line current is,(A)=")
