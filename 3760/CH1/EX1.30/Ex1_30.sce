clc;
P=100000; // VA of transformer
nmax=0.98; // maximum efficiency of transformer
pf=0.8; // power factor at which maximum efficiency occurs
l=80; // percentage of full load at which maximum efficiency occurs
po=P*pf*(l/100); // output at maximum efficiency
pl=((1/nmax)-1)*po; // total losses 
pc=pl/2; // core loss 
poh=pc; // at maximum efficiency variable losses are equal to constant losses
pohl=poh*(100/l)^2; // ohmic losses at full load
z=0.05; // p u leakage impedance
r=pohl/P; // p u resistance
x=sqrt(z^2-r^2); // p u leakage reactance
vr=(r*pf+x*sqrt(1-pf^2))*100; // voltage regulation  
printf('Voltage regulation at 0.8 p.f. lagging is %f percent ',vr);
