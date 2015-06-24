clear;
clc;
V=700;
E2=V/sqrt(3);
N_s=1500;
N=1200;
s=(N_s-N)/N_s;
V_dd=.7;
V_dt=1.5;
a=0;
u=18;//overlap angle in case of rectifier
V_d=3*sqrt(6)*s*E2*(cosd(a)+cosd(a+u))/(2*%pi)-2*V_dd;

V1=415;
V_ml=sqrt(2)*V1;
u=4;//overlap anglein the inverter
//V_dc=-(3*V_ml*(cosd(a)+cosd(a+u))/(2*%pi)-2*V_dt);
//V_dc=V_d;
//after solving,  (1+cosd(u))*cosd(a)-sind(u)*sind(a)=-.6425
a=acosd(-.6425/(sqrt((1+cosd(u))^2+sind(u)^2)))-atand(sind(u)/(1+cosd(u)));
printf("firing angle advance=%.2f deg",180-a);