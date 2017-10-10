// example:-3.7,page no.-101.
// NOTE:-this example is a method for calculating unknown load impedence of slotted line section.all data are given and preassumed.
// program to determine unknown load impedence.
clc
clear
exec("DEPENDENCIES/smith_chart_tao.sci")
Zl=0;Zo=50; // for short circuitting the load.
SWR=%inf;
// short circuit is removed and replace with unknown load.
SWR=1.5;lamda=0.04;
lmin=4.2-2.72;
tao=(1.5-1)/(1.5+1);
theta=(%pi+((4*%pi)/4)*1.48);
tao=abs(tao)*exp(%i*theta);
Zl=50*((1+tao)/(1-tao));
// result
disp(Zl,'load impedence = ')
smith_chart(tao)
// when analyse with the help of smith chart.see the angle from x=0 axis i.e Tao_real axis.if it is above this axis take angle anticlockwise and if it is below this axis.take angle clockwise from Tao_real axis below.