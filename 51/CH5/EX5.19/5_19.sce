clc;
clear;
h=1;//in
Q=230;//ft^3/min
ang=30;//degrees
dia1=10;//in
dia2=12;//in
n=1725;//rpm
//m=d*Q
m=(2.38/1000)*Q/60;
//u2=rotor blade speed
u2=(dia2/2)*(n*2*(%pi)/(12*60));
//m=d*A2*Vr2 and A2=2*%pi*r2*h and r2=dia2/2
//hence, m=d*2*%pi*r2*h*Vr2
//Vr2=w2*sin(ang)
w2=m*12*12/((2.38/1000)*2*(%pi)*(dia2/2)*(h)*sin(ang*(%pi)/180));//ft/sec
Vang2=u2-(w2*cos(ang*(%pi)/180));//ft/sec
Wshaft=m*u2*Vang2/(550);//hp
disp("hp",Wshaft,"The power required to run the fan=")