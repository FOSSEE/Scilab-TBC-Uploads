//Example 2.40: true value of voltage ,current and power
clc;
clear;
close;
vs=102;//V
is=4;//A
ws=375;//W
ph=acosd(ws/(is*vs));//degree
ph1=round(ph);//
x=ph-ph1;//
y=x*60;//
angd=y+22+10;//
ang=angd/60;//
ta=ph1+ang;//
a1=2000;//
a2=100;//
nr=a1/a2;//
rcf=0.995;//
rcf1=1.005;//
avr=rcf*nr;//
pv=avr*vs;//
acr=rcf1*(a2/nr);//
pc=acr*is*is;//A
psd=pv*pc*cosd(ta)*10^-3;//
disp(pv,"true value of voltage is,(V)=")
disp(pc,"true value of current is,(A)=")
disp(psd,"true value of power is ,(kW)=")
