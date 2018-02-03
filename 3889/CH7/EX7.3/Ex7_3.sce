//Example 7.3
//page 432
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator Design Using Root Locus

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=1/((s)*(s+1)*(s+2));

//Root locus plot using evans root locus
f=figure()
evans(P)
title("Root locus of 1/(s*(s+1)*(s+2)",'fontsize',5)
h=legend('');
h.visible="OFF"
zoom_rect([-2 -1.5 2 1.5]*kpure(P)/3)
a=gca();
a.x_location="origin"
a.y_location="origin"
a.parent.background=8; 
legends(['root locus';'';'asymptotic directions';'open loop poles'],[2,3,1,-2],with_box=%f,opt="ur",2.8)
sgrid();
K=poly(0,'K')
R= routh_t(P,K);
disp(R,'Routh Array=')
kval= kpure(P)
disp(kval,'Limiting Gain Kmax=')
