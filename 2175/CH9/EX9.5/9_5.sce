clc;
T1=288;
T2s=T1*[3^0.286];
T2=420.5
T4=T2;
p6=8.14;
p6!p7=4.19;
p7=p6/(p6!p7);
p8=(p7-0.2)
p1=1.01
p10=p1
p9=0.05+p10
y2=1.333;
T8=923;
T9s=T8/[(p8/p9)^({y2-1}/y2)];
T9=T8-[(T8-T9s)*0.85];
cps2=1.15;
N=cps2*(T8-T9);
T5=728.8;
T6=T8;
T7=686.5;
Q=cps2*(T6-T5+T8-T7)
disp("kJ/kg",Q,"Heat supplied is")

Ceff=105.2/Q;
disp("%",Ceff*100,"cycle efficiency is")
GW=(105.2/0.98)+277;

Wr=105.2/GW
disp(Wr,"work ratio is:")
