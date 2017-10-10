clc;
clear all;
disp("heat transfer rate")
La=0.22;//m
Lb=0.22;//m
kA=3.5;// W/(m*C)
kB=0.65;// W/(m*C)
thf=1300;// degree C
tcf=40;// degree C
hconvi=16.4;//W/(m^2*C)
hconvo=11.5;//W/(m^2*C)
hradi=17.5;//W/(m^2*C)
hrado=7.2;//W/(m^2*C)
//q= qconvi+qradi=qA+qB=qconvo+qrado
//q=delT/Rtotal=(thf-tcf)/Rtotal
hi=hconvi+hradi;
ho=hconvo+hrado;
Rtotal=1/hi+1/ho+La/kA+Lb/kB;
q=(thf-tcf)/Rtotal;// W
disp("W/m^2",q,"rate of heat transfer through wall are unit area =")
//q=hi*(thf-t1)=(t1-t2)/(La/kA)
t1=thf-q/hi;// degree C
t2=t1-q*(La/kA);// degree C
disp ("degree C",t2,"maximum temperature to which common brick is subjected t2 =")



