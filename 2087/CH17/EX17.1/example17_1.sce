

//example 17.1
//calculate discharge through the outlet
clc;funcprot(0);
//given
D=100.0;         //F.S.L of distributory
wc=99.90;      //F.S.L of water course
L=9;           //length of pipe
d=20;          //diameter of pipe
f=0.005;     //coefficient of friction
g=9.81;      //acceleration due to gravity

H=D-wc;        //working head
C=(d/((1.5*d/(400*f)+L)*f))^0.5/20;
A=%pi*d^2/(4*10000);
q=C*A*(2*g*H)^0.5;
q=round(q*10000)/10000;
mprintf("discharge through the outlet=%f cumec.",q);
