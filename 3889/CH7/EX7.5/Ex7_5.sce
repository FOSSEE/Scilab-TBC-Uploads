//Example 7.5
//page 439
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator Design Using Root Locus

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=(s+1)/((s^2)*(s+9));

//Root locus plot using evans root locus
f=figure()
evans(P)
title("Root locus of (s+1)/((s^2)*(s+9))",'fontsize',5)
h=legend('');
h.visible="OFF"
zoom_rect([-5 -10 5 10])
a=gca();
a.x_location="origin"
a.y_location="origin"
a.parent.background=8; 
legends(['root locus';'';'asymptotic directions';'open loop poles'],[2,3,1,-2],with_box=%f,opt="ur",2.8)
K=poly(0,'K')
R= routh_t(P,K);
disp(R,'Routh Array')
