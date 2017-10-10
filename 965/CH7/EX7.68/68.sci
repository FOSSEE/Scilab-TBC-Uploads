clc;
clear all;
disp("heat transfer coefficient")
to=25;//degree C
ti=130;//degree C
U=16.5;// m/s
v=15.53*10^(-6);//m^2/s
Q=100;//W
D=20/1000;//m
L=120/1000;//m
dis=0.12;//  power loss
As=3.1416*D*L;
h=Q*(1-dis)/(As*(ti-to));
disp("W/m^2.C",h,"heat transfer coefficient h =")
Re=U*D/v;
Pr=0.702;
Prs=0.685;
Nu=0.26*(Re^0.6)*(Pr^0.36)*(Pr/Prs)^0.25;
disp (Nu,"Nusselt number Nu =")
h=Nu*k/D;
disp("W/m^2.C",h,"heat transfer coefficient ")

