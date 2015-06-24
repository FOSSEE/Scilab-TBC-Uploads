//Calculate fraction of load carried by fibres 
//Ex:19.3
clc;
clear;
close;
ef=430;//in GPa
e=3.6;//in GPa
m=ef/e;
vf=0.15;//by volume
vm=1-vf;
x=vm/vf;
pf=m;
pc=m+x;
y=pf/pc;
disp(y,"fraction of load carried by fibres (15 % by volume) = ");
vf1=0.65
vm1=1-vf1;
z=vm1/vf1;
pc1=m+z;
zz=pf/pc1;
disp(zz,"fraction of load carried by fibres (65 % by volume) = ")