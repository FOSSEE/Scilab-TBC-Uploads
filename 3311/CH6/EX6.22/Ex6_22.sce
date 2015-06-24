// chapter 6
// example 6.22
// Determine the minimum width of gate pulse
// page-345-346
clear;
clc;
// given
I_H=0.2; // in A (holding current)
td=2.5; // in us (delay time)
wt=%pi/3; // in radian (delay angle)
L1=8, L2=0; // in mH
R=2; // in ohm
E_line=208; // in V (line voltage)
f=50; // supply frequency
// calculate
L1=L1*1E-3;// changing unit from mH to H
td=td*1E-6;// changing unit from us to s
Ep=E_line/sqrt(3); // calculation of phase voltage
Em=Ep*sqrt(2); // calculation of peak voltage
e=sqrt(3)*Em*sin(wt+%pi/6);
di_dt_1=e/L1; // calculation of rate of rise of anode current when L=8 mH
// Since I_H=t1*(di_dt), therefore we get
t1=I_H/di_dt_1;// calculation of time required for anode current to rise to holding value when L=8 mH
tp1=t1+td; // calculation of minimum width of gate pulse when L=8 mH
//di_dt_2=e/L2; // rate of rise of anode current when L=0
t2=I_H/e*L2;// calculation of time required for anode current to rise to holding value when L=0
tp2=t2+td; // calculation of minimum width of gate pulse when L=0
printf("\nThe minimum width of gate pulse when L=8 mH is \t tp1=%.3f us",tp1*1E6);
printf("\nThe minimum width of gate pulse when L=0 H is \t tp2=%.1f us",tp2*1E6);