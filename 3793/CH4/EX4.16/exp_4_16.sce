clear;
clc;
Rl=400;
sl=300;
Rs=80;
sb=900;
Rsb=400;
va=300;
vb=150;
ta=sl/vb;
tb=sb/va;
reflectionca=(Rs-Rsb)/(Rs+Rsb);

refractionca=(2*Rs)/(Rs+Rsb);
reflectionca=-reflectionca;
reflectionca1=-reflectionca;
reflectioncb1=reflectionca;
refractioncb=refractionca;
refractioncb1=(2*Rsb)/(Rs+Rsb);
refractionca1=refractioncb1;
reflectionend=1;
refractionend=0;
v1=(reflectionend - reflectionca+.37+.163);//using bewley lattice diagram
mprintf("From the diagram the voltage at 10 micros is %.4f pu",v1);

