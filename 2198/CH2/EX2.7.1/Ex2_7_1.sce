//Ex 2.7.1
clc;clear;close;
format('v',6);

//Given : 
Vgamma=0.6;//volt
rf=12;//ohm
V=5;//volts
R=1;//kohm
IF=(V-Vgamma)/(R*1000+rf);//A
disp(IF*1000,"Diode current in mA :");
VF=Vgamma+IF*rf;//volts
disp(VF,"Diode voltage in volts :");
