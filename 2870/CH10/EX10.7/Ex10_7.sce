clc;clear;
//Example 10.7

//given data
T0=290;
Tsource=1600;
Tsink=T0;
//from Ex 10.1
qin=2728.6;
qout=2018.6;
h4=2403;

//from steam tables
s1=1.2132;
s3=6.7450;

//calculations
s2=s1;s4=s3;//isentropic processes
xdest12=0;
xdest34=0;
xdest23=T0*(s3-s2-(qin/Tsource));
xdest41=T0*(s1-s4+(qout/Tsink));
disp(xdest12,'exergy destruction in 1-2 in kJ/kg');
disp(round(xdest23),'exergy destruction in 2-3 in kJ/kg');
disp(xdest34,'exergy destruction in 3-4 in kJ/kg');
disp(round(xdest41),'exergy destruction in 4-1 in kJ/kg');
xdestcy=xdest12+xdest23+xdest34+xdest41;
disp(round(xdestcy),'exergy destruction in cycle in kJ/kg');
//from steam tables
//at 290 K and 100 kPa
h0=71.355;
s0=0.2533;
X4=(h4-h0)-T0*(s4-s0);
disp(round(X4),'exergy of the leaving steam in kJ/kg')
