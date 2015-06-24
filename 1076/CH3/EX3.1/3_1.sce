clear;
clc;


sg1=10e6;
vg1=13.2e3;
sg2=15e6;
vg2=13.2e3;
sm1=8e6;
vm1=12.5e3;
sm2=12e6;
vm2=12.5e3;
Xg=15;
Xm=20;

sb=50e6;
vb=13.8e3;

xg1=Xg * (vg1/vb)^2 * (sb/sg1);
xg2=Xg * (vg2/vb)^2 * (sb/sg2);
xm1=Xm * (vm1/vb)^2 * (sb/sm1);
xm2=Xm * (vm2/vb)^2 * (sb/sm2);
 mprintf ("\nReactance of Generator 1= %.2f percent",xg1);
 mprintf ("\nReactance of Generator 2= %.2f percent",xg2);
 mprintf ("\nReactance of Motor 1= %.2f percent",xm1);
 mprintf ("\nReactance of Motor 2= %.2f percent",xm2);
 
