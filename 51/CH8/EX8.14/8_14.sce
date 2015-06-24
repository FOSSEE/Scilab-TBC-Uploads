clc;
clear;
D=1;//ft
f=0.02;
z1=100;//ft
z2=20;//ft
z3=0;//ft
l1=1000;//ft
l2=500;//ft
l3=400;//ft
//assuming fluid flows into B
//applying energy equation bwtween (1 and 3) and (1 and 2) and using the relation V1=V2+V3
c1=z1*32.2*2/(f*l1);
c2=(z1-z2)*32.2*2/(f*l1);
x=(c1-c2)/(l3/l1);//160
y=(l2/l1)/(l3/l1);//1.25
a=c2-x;//98
b=(a*2*(y+(l2/l1)));//539
c=4*x+b;//1179
d=-((y+(l2/l1))^2)+(4*y);//-2.5625
e=-(a^2);//-9604
fn=poly([e 0 c 0 d],'V2','c');
r=roots(fn);
V2=r(1);
V1=(c2-(l2/l1)*V2)^0.5;
A=(%pi/4*(D^2));
Q1=V1*A;
Q2=V2*A;
Q3=Q1-Q2;
disp("(ft^3)/sec",Q1,"Q1 (out of A)=")
disp("(ft^3)/sec",Q2,"Q2 (into B)=")
disp("(ft^3)/sec",Q3,"Q3 (into C)=")