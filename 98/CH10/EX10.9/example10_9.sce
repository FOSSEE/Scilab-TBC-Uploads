//Chapter 10
//Example 10_9
//Page 238

clear;clc;

pd=2000;
pfr=0.8;
vrd=6.6;
ll=20;
f=50;
vr=33;
r=0.4;
xl=0.5;
rp=7.5;
xlp=13.2;
rs=0.35;
xls=0.65;

rc=ll*r;
xlc=ll*xl;

eqr=rp+rs*(vr/vrd)^2;
eqxl=xlp+xls*(vr/vrd)^2;

tr=rc+eqr;
txl=xlc+eqxl;

vr_phase=vr*1000/sqrt(3);
i=pd*1000/sqrt(3)/vr/1000;
vs=vr_phase+i*tr*pfr+i*txl*sin(acos(pfr));
pfs=(vr_phase*pfr+i*tr)/vs;
loss=3*i^2*tr/1000;
op=pd*pfr;
ip=op+loss;
n=op/ip*100;

printf("Resistance of each conductor = %.2f ohm \n\n", rc);
printf("Reactance of each conductor = %.2f ohm \n\n", xlc);

printf("Equivalent resistance of transformer referred to primary = %.2f ohm \n\n", eqr);
printf("Equivalent reactance of transformer referred to primary = %.2f ohm \n\n", eqxl);

printf("Total resistance of line and transformer = %.2f ohm \n\n", tr);
printf("Total Reactance of line and transformer = %.2f ohm \n\n", txl);
printf("Recieving end voltage per phase = %.0f V \n\n", vr_phase);
printf("Load current = %.2f A \n\n", i);
printf("Sending end voltage = %.2f kV \n\n", vs*sqrt(3)/1000);
printf("Sending end power factor = %.2f \n\n", pfs);
printf("Line losses = %.3f kW \n\n", loss);
printf("Output power = %.0f kW \n\n", op);
printf("Input power = %.1f kW \n\n", ip);
printf("Transmission efficiency = %.2f %% \n\n", n);

