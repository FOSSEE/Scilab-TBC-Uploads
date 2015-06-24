// Example 4.6;all day efficiency
clc;
close;
clear;
//given
format('v',5)
ef=0.98;//efficiency in %
kva=15;//kVA
pf=1;//power factor
op=kva*pf;//output power in kW
ip=op/ef;//input power in kW
loss=ip-op;//loss in kW
cl=(loss*10^3)/2;//copper loss in W
il=cl;//iron loss in W
t1=12;//time in hours
p1=2;//power in kW
pf1=0.5;//power factor
y1=(p1)/pf1;//kVA
il1=il*t1;//loss in Wh
cl1=cl*((y1)/kva)^2*t1;//copper loss in Wh
top1=p1*t1;//kWht1=12;//time in hours
t2=6;//time in hours
p2=12;//power in kW
pf2=0.8;//power factor
y2=(p2)/pf2;//kVA
il2=il*t2;//iron loss in Wh
cl2=cl*((y2/kva)^2)*t2;//copper loss in Wh
top2=p2*t2;//kWh
t3=6;//time in hours
il3=il*t3;//iron loss Wh
tol=top1+top2;//iron loss kWh
til=(il1+il2+il3)*10^-3;//total iron loss in kWh
tcl=(cl1+cl2)*10^-3;//total copper loss in kWh
ade=((tol)/(tol+til+tcl))*100;//efficiency in %
disp(ade,"all day efficiency is,(%)=")
