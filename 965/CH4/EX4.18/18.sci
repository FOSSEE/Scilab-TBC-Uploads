clc;
clear all;
disp("time and temperature")
R=80/1000;//m
k=17.4;// W/(m.C)
ti=830;// degree C
ta=40;// degree C
t=120;// degree C
a=0.019;// m^2/h
h=180;// W/(m^2.C)

Lc=3.1416*R*R*L/(2*3.1416*R*L);// characteristic length
Bi=h*Lc/k;
if Bi>1
disp("Internal temperature gradients are not small and can not be neglected")
end
Bii=1/Bi;
Fo=3.2;
tau=3600*Fo*Lc^2/a;
disp("sec",tau,"Tau =")
r=R;
Bii=1/Bi;
T1=0.83;
t1=T1*(t-ta)+ta;
ts=t1;
disp("degree C",ts,"Temperature at the surface Ts =")
gradt=h*(ts-ta)/k;
disp("C/m",gradt,"Temperature gradient =")

