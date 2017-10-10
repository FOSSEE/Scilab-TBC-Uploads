clc;
rpu=0.02; // P U equivalent resistance
xpu=0.05; // P U equivalent leakage reactance
E2=440; // Secondary full load voltage
pf=0.8; // lagging power factor
vr=rpu*pf+xpu*sqrt(1-pf^2); // P U voltage regulation
printf('Full load p.u. voltage regulation is %f or %f percent\n',vr,vr*100);
dv=E2*vr; // change in terminal voltage
V2=E2-dv; // secondary terminal voltage
printf('Secondary terminal voltage is %f V',V2);
