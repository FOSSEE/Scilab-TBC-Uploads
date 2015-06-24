//Ex 2.33
clc;
clear;
T1=2;
T=4*T1;
Wo=2*%pi/T;
W=[-Wo,0,Wo];
ak=(2*%pi*Wo*T1/%pi)/sqrt(-1);
XW=[-ak,0,ak];
ak1=-(2*%pi*Wo*T1/%pi);
XW1=[-ak1,0,ak1];
figure
a=gca();
a.y_location="origin";
a.x_location="origin";
plot2d3('gnn',W,XW1,2);
poly1=a.children(1).children(1);
poly1.thickness=3;
xlabel('W');
title('CTFT of cos(Wot)');