//Chapter 5
//Example 5.10
//page 170
//To determine the MVA rating of the shunt reactor
clear;clc;
v=275;
l=400;
R=0.035*l;
X=2*%pi*50*1.1*l*10^-3;
Z=R+%i*X;
Y=2*%pi*50*0.012*10^-6*l*%i;
A=1+(Y*Z/2);
B=Z;
Vs=275;
Vr=275;
r=(Vs*Vr)/abs(B);
Ce=abs(A/B)*Vr^2;
printf('Radius of the receiving-end circle=%0.1f MVA\n\n',r);
printf('Location of the center of receiving-end circle= %0.1f MVA\n\n',Ce);
printf('From the graph, 55 MVA shunt reactor is required\n\n');
theta=180+82.5;
x=-75:0.01:450;
a=Ce*cosd(theta); //to draw the circle
b=Ce*sind(theta); 
y=sqrt(r^2-(x-a)^2)+b;
x1=a:0.001:0;
y1=tand(theta)*x1;
plot(x,y,x1,y1);
title('Circle diagram for example 5.10');
xlabel('MW');
ylabel('MVAR');
plot(a,b,'markersize',150);
xgrid(2)
set(gca(),"grid",[0,0])
get("current_axes");
xstring (-75,25,'55 MVAR');
xstring(-75,-25,'83.5 deg');
xstring(-20,-300,'487.6 MVA');
xstring(300,-100,'544.3 MVA');