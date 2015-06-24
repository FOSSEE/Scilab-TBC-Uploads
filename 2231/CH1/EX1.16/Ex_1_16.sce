//Example 1_16
clc;
clear;close;

//Given data: 
//VT=0.9+0.02*IT;//V
//part (a)
IT=20;//A
VT=0.9+0.02*IT;//V
Pdiss=VT*IT;//W
disp(Pdiss,"(a) Mean power dissipation (in W) : ");
//part (b)
IT_mean=20;//A
IT_peak=20*%pi;//A
Pdiss=1/2/%pi*integrate('(0.9+0.02*IT_peak*sin(theta))*(IT_peak*sin(theta))','theta',0,%pi);//W
disp(Pdiss,"(b) Mean power dissipation (in W) : ");
//part (c)
IT=20;//A//for half cycle
VT=0.9+0.02*IT;//V
Pdiss=VT*IT/2;//W
disp(Pdiss,"(c) Power dissipation occur only during half cycle. Mean power dissipation (W)");
//part (d)
IT=20;//A//for half cycle
VT=0.9+0.02*IT;//V
Pdiss=VT*IT/3;//W
disp(Pdiss,"(d) Power dissipation occur only during 1/3rd period in a cycle. Mean power dissipation (W)");
