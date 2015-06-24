//Ex:105
clc;
clear;
close;
u=0.55;//efficiency
f=14*10^9;// in hz
D=5;// in m
c=3*10^8;// speed of light in m/s
g=(u*(%pi*f*D)^2)/(c*c);//antenna gain
G=10*log(g)/log(10);//antenna gain in db
p_amp=26.98;// in db
b_o=3;// in db
p_op=p_amp-b_o;// in db
l_w=0.5;// in db
p_f=p_op-l_w;// in db
e_irp=p_op+G;// in db
e=23.48+54.7;// in db
e_p=10^(e/10);
R=42164;// in km
r=6378;// in km
E=41;// in degree
q=E+asin((r*(cos(E*3.14/180))/R)*180/3.14);
q1=47.55;
d=(R*R)+(r*r)-2*R*r*sin(q1*3.14/180);
d1=sqrt(d);
d_f=(e_p)/(4*%pi*d);
printf("Power flux density=%e W/sq.m", d_f/1000000);