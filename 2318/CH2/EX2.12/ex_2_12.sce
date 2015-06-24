//Example 2.12://power factor and capacitance
clc;
clear;
close;
w1=-2000;//watts
w2=4000;//watts
ph=atand((sqrt(3)*(w2-w1))/(w2+w1));//in degree
pf=cosd(ph);//
disp(pf,"power factor of the system is")
w=w1+w2;//total power
v=400;//volts
vp=(v/sqrt(3));//phase voltage
pp=w/3;//power per phase
pi=(pp)/(vp*pf);//phase current
pim=vp/pi;//phase impedance
rip=pim*pf;//resistance each phase
rep=(sqrt(pim^2-rip^2));//reactance of each phase
pfn=0.5;//power factor
pimb=rip/pfn;//impedance per phase
repn=(sqrt(pimb^2-rip^2));//reactance per phase
cp=rep-repn;//capacitive reactance
f=50;//Hz
f=50;//Hz
c=((1/(2*%pi*f*cp)));//
disp(round(c*10^6),"capacitance is,(micro-F)=")
