clc;
clear all;
disp("temperature of cheese leaving")
m=800;//kg/h
D=100/1000;//m
L=1.75;//m

ts=95;//degree C
t1=15;//degree C
rho=1150;//kg/m^3
cp=2750;//J/kg.C
mu=22.5;//kg/m.s
k=0.421;//W/(m.C)

A=3.1416*(D^2)/4;
U=(m/3600)/(rho*A);// m/s
Re=(m/3600)*D/(A*mu);
Pr=mu*cp/k;
X=(D/L)*Re*Pr;
X

Nu=3.65+0.067*X/(1+0.04*X^(1/3))
h=k*Nu/D;
disp("W/m^2.C",h,"heat transfer coefficient h =")

//tb=(t1+t2)/2;
//t2=t1+h*A*(ts-tb)/(m*cp);
//611.11*(t2-15)=62.4*(175-t2)
//t2*(611.11+62.4)=175*62.4+15*611.11
t2=(175*62.4+15*611.11)/(611.11+62.4)
disp("degree C",t2,"temperature of cheese leaving heated section t =")

Q=m*cp*(t2-t1)/3600;

disp ("W",Q,"Rate of heat transfer from tube to cheese =")

