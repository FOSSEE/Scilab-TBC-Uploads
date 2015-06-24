clc;clear;
//Example 10.8

//given data
m1=15;
P1=7000;
P2=P1;
P3=P1;
P4=500;
P5=P4;
P6=5;
P7=500;
P8=5;
P9=7000;
P10=7000;

//from steam tables
v7=0.001005;
v8=0.001093;
h1=3411.4;
h2=h1;
h3=h1;
h4=h1;
h5=2739.3;
h6=2073.0;
h7=640.09;
h8=137.75;
h11=144.78;

//calculations
wIin=v8*(P9-P8);
wIIin=v7*(P10-P7);
h9=h8+wIin;
h10=h7+wIIin;
Qmax=m1*(h1-h7);
disp(Qmax,'the maximum rate in kW');
Wtout=m1*(h3-h6);//turbine
Wpin=m1*wIin;//pump
Wnet=Wtout-Wpin;
disp(round(Wnet/1000),'the power produced in MW');
Qp=0;
Qin=m1*(h1-h11);
Eu=(Wnet+Qp)/Qin;
disp(Eu,'the utilization factor');
m4=0.1*m1;
m5=0.7*m1;
m7=m4+m5;
Qout=m4*h4+m5*h5-m7*h7;
disp(Qout/1000,'the rate of process heat supply in MW')
