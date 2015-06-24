//Example : 
clc;
clear;
close;
format('v',8);

//Given Data :
p1=0.02;//bar
hg1=2535.5;//KJ/Kg(at 0.02 bar)
p2=0.03;//bar
hg2=2545.6;//KJ/Kg(at 0.03 bar)
delta_h12=hg2-hg1;//KJ/KgK
p3=0.024;//bar
p4=0.02;//bar
delta_h=delta_h12/0.01*(p3-p4);//KJ/KgK
hg_dash=hg1+delta_h;//KJ/Kg
disp(hg_dash,"Specific enthalpy in KJ/Kg : ");
